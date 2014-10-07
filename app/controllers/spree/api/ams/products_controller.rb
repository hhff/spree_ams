module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include Serializable

        private

        def object_serializer
          ProductSerializer
        end

      end
    end
  end
end