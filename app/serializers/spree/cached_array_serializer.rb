module Spree
  class CachedArraySerializer < ActiveModel::ArraySerializer
    def cache_key_for_array(object)
      glob = object.sort{|a,b| a.id <=> b.id}.map(&:cache_key).join("-")
      [ 'spree_ams', object.first.class.name.underscore, glob ].join('/')
    end

    def to_json(*args)
      if object.first.active_model_serializer.array_cached?
        cache_key = cache_key_for_array object 

        Rails.logger.info "Fetching cached JSON for #{cache_key}"
        cache.fetch cache_key do
          Rails.logger.info "Cache missing for #{cache_key}"
          super
        end
      else
        super
      end
    end
  end
end
