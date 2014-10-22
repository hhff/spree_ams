module Spree
  module Api
    module Ams
      module Serializable
        extend ActiveSupport::Concern

        included do
          prepend_before_filter :set_access_control_headers
        end

        private

        def set_access_control_headers
          headers['Access-Control-Allow-Origin'] = 'http://localhost:4200'
          headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, X-Spree-Token, X-Spree-Order-Token, X-Spree-Order-Id'
          headers['Access-Control-Max-Age'] = "1728000"
        end

        def respond_with(object=nil, rabl_template=nil, status=nil)
          unless defined? object
            render json: { error: 'No object passed into controllers respond_with call.' }, :status => 422
            return
          end
          unless defined? object_serializer
            render json: { error: 'No object serializer defined for this controller.' }, :status => 422
            return
          end
          if object.respond_to? :each
            render json: object, each_serializer: object_serializer
          else
            render json: object, serializer: object_serializer
          end
        end

        def load_user
          super
          @current_api_user = guest_api_user if @current_api_user.nil?
        end

        def guest_api_user
          User.new email: "guest@example.com"
        end

        # UMM

        def order_id_from_header
          request.headers['X-Spree-Order-Id']
        end

        def authorize_for_order
          order_id = order_id_from_header unless order_id
          super
        end

      end
    end
  end
end