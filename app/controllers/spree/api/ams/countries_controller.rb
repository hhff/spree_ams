module Spree
  module Api
    module Ams
      class CountriesController < Spree::Api::CountriesController
        include Serializable
        include Requestable

        # We don't need this paginated.
        def index
          @countries = Country.accessible_by(current_ability, :read).order('name ASC')
          respond_with @countries
        end

      end
    end
  end
end