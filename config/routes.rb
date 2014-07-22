Spree::Core::Engine.routes.draw do
  namespace :api do
    namespace :ams do
      resources :products
      resources :orders
      resources :taxonomies

      resources :users do
        collection do
          post 'login'
        end
      end

    end
  end
end