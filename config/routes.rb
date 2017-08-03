Rails.application.routes.draw do
  root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:index, :show, :new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
