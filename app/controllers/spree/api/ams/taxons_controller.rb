module Spree
  module Api
    module Ams
      class TaxonsController < Spree::Api::TaxonsController
        include Serializable
        include Requestable
      end
    end
  end
end
