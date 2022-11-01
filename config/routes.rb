Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :characters
        resources :maps, param: :slug
        resources :scores, param: :map_id
      end
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
