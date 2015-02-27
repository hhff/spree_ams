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
          case options[:default_template]
          when "spree/api/orders/could_not_transition"
            render json: { error: "#{object.errors.messages.to_s}" }, :status => options[:status]
            return
          end

          unless defined? object
            render json: { error: 'No object passed into controllers respond_with call.' }, :status => 422
            return
          end

          render json: object, meta: meta_for(object)
        end

      end
    end
  end
end