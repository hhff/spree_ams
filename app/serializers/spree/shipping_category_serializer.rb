module Spree
  class ShippingCategorySerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name
  end
end