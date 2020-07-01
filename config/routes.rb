Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :ingredients, only: [:new, :create]
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
end
