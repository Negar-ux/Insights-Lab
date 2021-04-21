Rails.application.routes.draw do
  resources :projects
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :interviews



  root 'interviews#index'
end
