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
          if object.try(:errors).present?
            render json: { errors: object.errors.to_hash }, status: options[:status]
            return
          end

          render json: object, meta: meta_for(object), status: options[:status]
        end

      end
    end
  end
end
