Rails.application.routes.draw do
  resources :compchallenges
  resources :challenges
  resources :competitions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
