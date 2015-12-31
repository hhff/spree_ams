module Spree
  module Api
    module Ams
      class CheckoutsController < Spree::Api::V1::CheckoutsController
        include Serializable
        include Requestable

        def order_id
          super || params[:id]
        end

      end
    end
  end
end
