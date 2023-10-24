Rails.application.routes.draw do
  resources :uses
  get 'top/main'
  post 'top/login'
  root 'top#main'
  get 'top/logout'
end