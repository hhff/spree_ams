module Spree
  class PaymentMethodSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes :id,
               :name,
               :description,
               :method_type
  end
end