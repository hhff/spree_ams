module Spree
  class StockLocationSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name

  end
end