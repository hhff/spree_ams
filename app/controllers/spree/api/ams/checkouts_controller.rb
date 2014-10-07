module Spree
  module Api
    module Ams
      class CheckoutsController < Spree::Api::CheckoutsController
        include Serializable

        private

        def object_serializer
          OrderSerializer
        end
      end
    end
  end
end