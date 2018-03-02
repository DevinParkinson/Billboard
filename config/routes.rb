Rails.application.routes.draw do
 root 'charts#index'
 devise_for :users

 resources :charts

  resources :charts do
    resources :artists
    resources :songs
  end
    
  scope 'artists/:artist_id', as: 'artist' do
    resources :songs, only: [:new, :create]
  end
end
