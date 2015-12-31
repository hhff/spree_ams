module Spree
  module Api
    module Ams
      class CorsController < Spree::Api::V1::BaseController
        include Requestable

        def preflight_check
          render nothing: true, content_type: 'text/plain'
        end

      end
    end
  end
end
