Rails.application.routes.draw do
  devise_for :users
  root to: 'answers#new'
  resources :answers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/confirmed', to: "answers#confirmed"
end
