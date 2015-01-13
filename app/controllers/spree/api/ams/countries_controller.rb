module Spree
  module Api
    module Ams
      class CountriesController < Spree::Api::CountriesController
        include Serializable

        # We don't need this paginated.
        def index
          @countries = Country.accessible_by(current_ability, :read).order('name ASC')
          respond_with @countries
        end

        private

        def object_serializer
          CountrySerializer
        end
      end
    end
  end
end