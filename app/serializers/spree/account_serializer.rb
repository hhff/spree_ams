module Spree
  class AccountSerializer < ActiveModel::Serializer
    embed :ids, include: true

    attributes  :id,
                :name,
                :fully_qualified_name,
                :email,
                :channel,
                :balance,
                :credit_limit,
                :status,
                :created_at,
                :updated_at

  end
end
