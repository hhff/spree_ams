module Spree
  class StateSerializer < BaseSerializer
    attributes  :id,
                :name,
                :abbr

    has_one :country, include: false
  
  end
end
