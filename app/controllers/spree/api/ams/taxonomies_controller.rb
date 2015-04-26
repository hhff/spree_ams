module Spree
  module Api
    module Ams
      class TaxonomiesController < Spree::Api::V1::TaxonomiesController
        include Serializable
        include Requestable
      end
    end
  end
end
