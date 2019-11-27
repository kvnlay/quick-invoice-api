Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :taxes, only: [:show, :index, :create, :update, :delete]
      resources :customers, only: [:show, :index, :create, :update, :delete]
      resources :invoices, only: [:show, :index, :create, :update, :delete] do
        resources :items, only: [:create, :update, :delete]
      end
    end
  end
end
