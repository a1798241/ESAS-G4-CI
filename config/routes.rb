Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #

  get 'login/index', to: 'login#index', as: 'login_index'

  get 'index', to: 'index#index', as: 'index'

  root "login#index"

  get 'staff', to: 'staff#index', as: 'staff_index'

  resources :students
  get '/student', to: "students#index", as: 'userStudent'

  get "logout", to: "login#destroy", as: 'logout'

  resources :classes

  get 'list', to: "classes#list", as: 'list'

  get 'show', to: "classes#show", as: 'show'

  # get 'edit', to: "classes#edit", as: 'edit'

end
