module Spree
  module Api
    module Ams
      class OrdersController < Spree::Api::OrdersController
        include Serializable
        include Requestable
      end
    end
  end
end