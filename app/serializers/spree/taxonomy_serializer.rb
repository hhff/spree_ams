module Spree
  class TaxonomySerializer < ActiveModel::Serializer
    embed :ids, include: true
    attributes :id,
               :name,
               :permalink,
               :pretty_name

    def permalink
      object.root.permalink
    end

    def pretty_name
      object.root.pretty_name
    end

    has_many :taxons
  end
end