module Spree
  class ShippingMethodSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name

    has_many :zones, serializer: ZoneSerializer
    has_many :shipping_categories, serializer: ShippingCategorySerializer

  end
end