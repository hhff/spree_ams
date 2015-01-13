module Spree
  module Api
    module Ams
      class CorsController < Spree::Api::ProductsController
        include Requestable

        def preflight_check
          headers['Access-Control-Allow-Origin'] = 'http://localhost:4200'
          headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
          headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version, X-Spree-Token, X-Spree-Order-Token, X-Spree-Order-Id, Authorization, Token, Content-Type, Access-Control-Allow-Origin'
          headers['Access-Control-Max-Age'] = '1728000'

          render nothing: true, content_type: 'text/plain'
        end

      end
    end
  end
end