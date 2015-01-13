module Spree
  class CountrySerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :iso_name,
                :iso,
                :iso3,
                :name,
                :numcode,
                :states_required

    has_many :states, serializer: StateSerializer
  end
end