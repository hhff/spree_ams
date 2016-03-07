module Spree
  module Api
    module Ams
      class CountriesController < Spree::Api::CountriesController
        include Serializable
        include Requestable

        # We don't need this paginated.
        def index
          @countries = Country.accessible_by(current_ability, :read)
                              .includes(:states).order(:name)

          isos = params[:isos]
          isos = isos.split ',' if isos.is_a?(String)

          @countries = @countries.where(iso: isos) if isos.present?

          respond_with @countries
        end

      end
    end
  end
end
