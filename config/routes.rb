Spree::Core::Engine.routes.draw do
  namespace :api do
    namespace :ams do
      match '*path' => 'cors#preflight_check', via: [:options]

      resources :products
      resources :orders
      resources :taxonomies

      resources :users do
        collection do
          post 'token'
        end
      end

    end
  end
end