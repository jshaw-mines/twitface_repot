TwitfaceRepot::Application.routes.draw do

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "twits#new", :as => "sign_up"
  root :to => "twits#index"
  resources :twits
  resources :sessions
  resources :photos
  resources :albums
end
