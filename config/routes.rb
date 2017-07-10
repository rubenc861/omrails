Rails.application.routes.draw do
  devise_for :users
 root 'pages#home'
 #added about page 6/25/17
 get 'about' => 'pages#about'
 get 'contact-us' => 'pages#contact-us'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
