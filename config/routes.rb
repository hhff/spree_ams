Spree::Core::Engine.routes.draw do
  namespace :api do
    namespace :ams do
      match '*path' => 'cors#preflight_check', via: [:options]

      resources :accounts
      resources :products
      resources :account_viewable_variants
      resources :line_items
      resources :orders
      resources :shipments
      resources :taxonomies
      resources :taxons
      resources :countries, :only => [:index, :show]

      # Order Routes Concern?
      resources :checkouts, only: [:update] do
        member do
          put :next
        end
      end

      resources :users do
        collection do
          post 'token'
        end
      end

    end
  end
end
