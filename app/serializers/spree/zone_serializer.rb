module Spree
  class ZoneSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name,
                :description

  end
end