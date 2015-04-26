module Spree
  module Api
    module Ams
      module Cacheable
        extend ActiveSupport::Concern

        class_methods do
          def cache_single
            class << self
              define_method :cached? do
                true
              end
            end
          end

          def cache_many
            class << self
              define_method :array_cached? do
                true
              end
            end
          end
        end

        included do
          class << self
            def cached?
              false
            end

            def array_cached?
              false
            end

            def cache_key_me
              binding.pry
            end
          end
        end
      end
    end
  end
end
