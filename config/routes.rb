Rails.application.routes.draw do
  resources :media

  # #Casein routes
  namespace :casein do
		resources :media
		resources :offers
    resources :pages
    resources :brands
  end

  resources :brands, only: [:index]
  resources :offers, only: [:index]
  get '/:id' => 'pages#show', :constraints => Casein::RouteConstraint.new
  get '/', to: redirect('/home')
end
