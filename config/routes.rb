Iwod::Application.routes.draw do
  devise_for :users
  root :to => "pages#index"

  get "/home" => "pages#user_home"

  resources :gyms
  resources :wods

  get 'gym_wod/:code' => "wods#by_code"
end
