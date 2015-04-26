module Spree
  module Api
    module Ams
      class LineItemsController < Spree::Api::V1::LineItemsController
        include Serializable
        include Requestable
      end
    end
  end
end
