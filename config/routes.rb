Rails.application.routes.draw do


  # /gardens/3/plants/new

  resources :gardens do
    resources :plants, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
