class TaxonomySerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name
  has_one :root, serializer: TaxonomyRootSerializer
  has_many :taxons, serializer: TaxonSerializer
end