Rails.application.routes.draw do
 root 'charts#index'
 resources :charts

  resources :charts do
    resources :artists
    resources :songs
  end

  scope 'artsits/:artist_id', as: 'artist' do
    resources :songs, only: [:new, :create]
  end
end
