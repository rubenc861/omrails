Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get 'signup' => 'devise/registrations#new'
  end
 root 'pages#home'
 #added about page 6/25/17
 get 'about' => 'pages#about'
 get 'contact-us' => 'pages#contact-us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
