# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  resources :events, only: %i[create show index new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users, only: %i[new show create]

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
