module Spree
  module Api
    module Ams
      class LineItemsController < Spree::Api::LineItemsController
        include Serializable
        include Requestable
      end
    end
  end
end