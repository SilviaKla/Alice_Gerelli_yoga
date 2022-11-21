Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :lessons
  resources :articles
  resources :contact, only: [:new, :create]
end
