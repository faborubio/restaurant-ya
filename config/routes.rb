Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :restaurants do
    resources :schedules, only: :create
    resources :foods, only: :create
  end
end
