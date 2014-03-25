Domains::Application.routes.draw do
  devise_for :users

  get 'account' => 'account#show', as: :account
  patch 'account' => 'account#update'

  root 'dashboard#show'
end
