Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  devise_for :users
  devise_scope :user do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
