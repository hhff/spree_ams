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
          headers['Access-Control-Allow-Origin'] = Ams.configuration.cors_whitelist
          headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, X-Spree-Token, X-Spree-Order-Token, X-Spree-Order-Id'
          headers['Access-Control-Max-Age'] = "1728000"
        end

        # Provide a guest user if there's no
        # current api user loaded.
        def load_user
          super
          @current_api_user = User.new if @current_api_user.nil?
        end

        # Allow the current order to be be
        # loaded from the request's header.
        def order_id
          params[:order_id] || params[:checkout_id] || params[:order_number] || request.headers['X-Spree-Order-Id']
        end

      end
    end
  end
end