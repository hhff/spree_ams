Spree::Core::Engine.routes.draw do
  namespace :api do
    namespace :ams do
      resources :products
      resources :orders
    end
  end
end