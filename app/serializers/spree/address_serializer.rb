module Spree
  class AddressSerializer < BaseSerializer
    attributes  :id,
                :firstname,
                :lastname,
                :address1,
                :address2,
                :city,
                :zipcode,
                :phone,
                :state_name,
                :alternative_phone,
                :company

    has_one :state, serializer: StateSerializer
    has_one :country, serializer: CountrySerializer
  end
end
