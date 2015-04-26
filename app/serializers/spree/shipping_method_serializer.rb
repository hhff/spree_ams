module Spree
  class ShippingMethodSerializer < BaseSerializer
    attributes  :id,
                :name

    has_many :zones, serializer: ZoneSerializer
    has_many :shipping_categories, serializer: ShippingCategorySerializer

  end
end
