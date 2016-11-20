Rails.application.routes.draw do

  root to: 'static_pages#index'
  resources :orders, except: :show
  devise_for :users
  resources :snacks, except: :show

  controller :shoppings do
    get 'shoppings/start'     => :start_shopping
    get 'shoppings/:id'     => :process_shopping, as: 'shopping'
    patch 'shoppings/:id'     => :finish_shopping
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
