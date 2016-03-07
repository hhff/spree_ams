module Spree
  class StateSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name,
                :abbr,
                :country_id

  end
end
