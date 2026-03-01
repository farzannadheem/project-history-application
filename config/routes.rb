Rails.application.routes.draw do
  devise_for :users

  # root path after login
  authenticated :user do
    root to: 'projects#index', as: :authenticated_root
  end

  # root path for non-logged in users
  root to: redirect('/users/sign_in')

  resources :projects do
    resources :project_conversations, only: [:create]
  end
end