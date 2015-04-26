module Spree
  module Api
    module Ams
      module Serializable

        def meta_for(object)
          meta = {}
          if object.respond_to?("total_pages")
            meta[:total_pages] = object.total_pages
          end
          meta
        end

        def respond_with(object=nil, options={})
          if object.is_a?(ActiveRecord::Relation) || object.is_a?(Array)
            render json: object, meta: meta_for(object), status: options[:status], serializer: Spree::CachedArraySerializer
            return
          else
            render json: object, meta: meta_for(object), status: options[:status]
            return
          end
        end

      end
    end
  end
end
