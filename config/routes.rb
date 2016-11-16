Rails.application.routes.draw do
  resources :orders
  devise_for :users
  resources :snacks

  controller :shoppings do
    get 'shoppings/start'     => :start_shopping
    get 'shoppings/:id'     => :process_shopping, as: 'shopping'
    patch 'shoppings/:id'     => :finish_shopping
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
