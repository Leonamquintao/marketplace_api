Rails.application.routes.draw do
  mount Rswag::Api::Engine => '/api-docs'
  mount Rswag::Ui::Engine => "/api-docs"
  mount Rswag::Api::Engine => "/api-docs"

  namespace :api,
    defaults: { format: :json },
    constraints: { subdomain: "api" }, path: "/" do
    scope module: :v1 do
      resources :users, only: %i[show create update destroy]
      resources :sessions, only: %i[create destroy]
    end
  end
end
