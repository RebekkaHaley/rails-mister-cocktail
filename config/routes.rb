Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:index, :show, :new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
