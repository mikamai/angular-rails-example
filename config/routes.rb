Rails.application.routes.draw do
  namespace :api do
    resources :books, only: :index
  end

  root to: 'welcome#index'
end
