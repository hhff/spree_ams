module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::OrdersController
        include Spree::Api::Ams::ControllerSetup

        private

        def object_serializer
          OrderSerializer
        end

      end
    end
  end
end