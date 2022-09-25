Rails.application.routes.draw do
  
  devise_for :users

  devise_scope :user do
    # get から root に帰る時は/を#に変える
    root "users/sessions#new"
    # get '/sign_in', to: 'users/sessions#new'
    get "signup", :to => "users/registrations#new"
    get "signin", :to => "users/sessions#new"
    get "signout", :to => "users/sessions#destroy"
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  namespace :users do
    get 'dash_boards/index'
   
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
