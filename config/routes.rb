Rails.application.routes.draw do
 root 'charts#index'
 resources :charts

  resources :charts do
    resources :artists
  end
end
