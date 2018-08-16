Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      	resources :artists
        resources :artworks
  		resources :genes
  		resources :comments
            end
  end
end

