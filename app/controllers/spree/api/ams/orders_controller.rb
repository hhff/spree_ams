module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::OrdersController
        include ControllerSetup
        include Spree::Core::ControllerHelpers

        def show
          if params[:id] == 'current'
            binding.pry
            respond_with current_order(create_order_if_necessary: true)
          else
            super
          end
        end

        private

        def object_serializer
          OrderSerializer
        end
      end
    end
  end
end