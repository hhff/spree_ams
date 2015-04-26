module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::V1::OrdersController
        include Serializable
        include Requestable
      end
    end
  end
end
