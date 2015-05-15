module Spree
  class PaymentSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes :id,
               :state

    has_one :payment_method, serializer: PaymentMethodSerializer, root: :payment_methods
    has_one :source, serializer: SourceSerializer

  end
end
