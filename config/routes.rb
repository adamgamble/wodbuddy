Iwod::Application.routes.draw do
  devise_for :users
  root :to => "pages#index"

  get "/home" => "pages#user_home"

  resources :gyms do
    member do
      get :poster
    end
  end
  resources :wods

  get 'gym_wod/:code' => "wods#by_code", as: "wods_by_code"
end
