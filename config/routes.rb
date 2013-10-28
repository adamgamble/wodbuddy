Iwod::Application.routes.draw do
  devise_for :users
  root :to => "pages#index"

  get "/home" => "pages#user_home"

  resources :gyms
end
