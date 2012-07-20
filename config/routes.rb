U::Application.routes.draw do

  resources :links, :except => [:destroy, :edit]

  root :to => 'high_voltage/pages#show', :id => 'home'

  # Follow shortened uRLs and redirect to original URL
  match '/:short_url' => 'links#go'
end
