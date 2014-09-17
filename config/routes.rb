Rails.application.routes.draw do
  namespace :api do
    resources :books, only: %w(index show update)
  end

  get ':id' => 'welcome#index'
  root to: 'welcome#index'
end
