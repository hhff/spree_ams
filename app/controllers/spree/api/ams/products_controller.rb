module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include Serializable
        include Requestable
      end
    end
  end
end