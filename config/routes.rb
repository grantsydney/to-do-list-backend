Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     resources :items
  #     resources :lists
  #     resources :users
  #   end
  # end

  namespace :api do
      namespace :v1 do
        resources :users do
          resources :lists do
            resources :items
          end
        end
      end
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
