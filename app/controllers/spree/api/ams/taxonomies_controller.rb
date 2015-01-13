module Spree
  module Api
    module Ams
      class TaxonomiesController < Spree::Api::TaxonomiesController
        include Serializable
        include Requestable
      end
    end
  end
end