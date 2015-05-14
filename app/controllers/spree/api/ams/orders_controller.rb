module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::OrdersController
        include Serializable
        include Requestable

        def mine
          if current_api_user.persisted?
            @orders = current_api_user.orders.reverse_chronological
            respond_with(@orders)
          else
            render "spree/api/errors/unauthorized", status: :unauthorized
          end
        end
      end
    end
  end
end