module Spree
  module Api
    module Ams
      class TaxonsController < Spree::Api::V1::TaxonsController
        include Serializable
        include Requestable
      end
    end
  end
end
