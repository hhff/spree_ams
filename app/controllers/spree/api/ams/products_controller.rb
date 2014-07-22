module Spree
  module Api
    module Ams
      class ProductsController < Spree::Api::ProductsController
        include ControllerSetup

        def index
          super
          respond_with @products
        end

        def show
          super
          respond_with @product
        end

        protected

        def object_serializer
          ProductSerializer
        end

      end
    end
  end
end