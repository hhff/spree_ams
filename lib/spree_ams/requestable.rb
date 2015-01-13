module Spree
  module Api
    module Ams
      module Requestable
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

        # Override Base Controller
        def load_user
          super
          @current_api_user = guest_api_user if @current_api_user.nil?
        end

        def guest_api_user
          User.new
        end

        def order_id
          params[:order_id] || params[:checkout_id] || params[:order_number] || request.headers['X-Spree-Order-Id']
        end

      end
    end
  end
end