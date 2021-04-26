Rails.application.routes.draw do

  resources :projects
  resources :interviews do
    resources :notes
  end

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      devise_scope :user do
        post "sign_up", to: "registrations#create"
        post "sign_in", to: "sessions#create"
      end

    end
  end


  root 'interviews#index'

  namespace :api, defaults: {format: 'json'} do
    get 'interviews/search', to: 'interviews#search'
    resources :interviews


    resources :projects
    get 'projects/search', to: 'projects#search'
  end

end
