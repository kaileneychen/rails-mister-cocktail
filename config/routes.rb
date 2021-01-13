Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# root will make the homepage something
  root to: "cocktails#index"

  resources :cocktails, only: [:create, :new, :show, :index] do
    resources :doses, only: [:new, :create, :destroy]
  end
    resources :dose, only: :destroy
end
