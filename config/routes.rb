Rails.application.routes.draw do
  # For entering daily gamecounts into the push-up table
  put '/competitions/:competition_id/dailies/:sunshine' => 'dailies#update'
  get '/contact' => 'home#contact'
  # ^---- end
  resources :user_competitions
  resources :compchallenges
  resources :challenges
  resources :competitions
  resources :dailies
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
