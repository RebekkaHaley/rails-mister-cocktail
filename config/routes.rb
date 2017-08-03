Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:index, :show, :new, :create, :destroy]
  end
  resources :doses, only: [:destroy]
end
