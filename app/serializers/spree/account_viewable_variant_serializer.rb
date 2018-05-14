module Spree
  class AccountViewableVariantSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name,
                :visible,
                :price
  end
end
