module Spree
  module Api
    module Ams
      class LineItemsController < Spree::Api::LineItemsController
        include Serializable

        private

        def object_serializer
          LineItemSerializer
        end
      end
    end
  end
end