Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root "users/sessions#new"
    get '/sign_in', to: 'users/sessions#new'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
