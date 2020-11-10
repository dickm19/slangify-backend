Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :words, only: [:show, :index, :destroy, :new, :edit]
      resources :definitions, only: [:show, :index, :destroy, :new, :edit]
      resources :examples, only: [:show, :index, :destroy, :new, :edit]
    end
  end
end
