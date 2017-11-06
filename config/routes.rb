Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/subpage'

  match	':controller(/:action(/:id))',	:via	=>	:get
  match	':controller(/:action(/:id))',	:via	=>	:post

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :admin
  #resources :home
  #resources :access

  get "access/login" => "access#login"
  post "access/attempt_login" => "access#attempt_login"
  post "access/sign_up" => "access#sign_up"
  post "access/logout" => "access#logout"

  get "admin/index" => "admin#index"
  get "admin/show" => "admin#show"
  get "admin/new_admin" => "admin#new_admin"
  post "admin/create_admin" => "admin#create_admin"
  get "admin/delete" => "admin#delete"
  post "admin/destroy" => "admin#destroy"

  get "home/index" =>"home#index"


  root 'access#login'
  match ":controller(/:action(/:id))", :via => [:get, :post]

end
