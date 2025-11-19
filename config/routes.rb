Rails.application.routes.draw do
  root to: "homes#top"
  get "homes/about" => "homes#about", as: :about
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:new, :create, :show, :edit, :update], path_names: {new: "sign_up"}
  resource :session
  resources :passwords, param: :token
  get "up" => "rails/health#show", as: :rails_health_check
end
