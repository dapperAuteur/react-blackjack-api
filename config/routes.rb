Rails.application.routes.draw do
  resources :users, param: :token
end
