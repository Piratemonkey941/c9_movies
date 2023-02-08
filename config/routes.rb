Rails.application.routes.draw do
  resources :movies do
    collection do
      get 'search'
    end
    resources :ratings
  end
end