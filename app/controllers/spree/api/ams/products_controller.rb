module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include Spree::Api::Ams::ControllerSetup

        def index
          super
          respond_with @products
        end

        def show
          super
          respond_with @product
        end

        private

        def object_serializer
          ProductSerializer
        end

      end
    end
  end
end