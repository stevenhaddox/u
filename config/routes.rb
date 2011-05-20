U::Application.routes.draw do

  resources :links, :except => [:destroy]

  root :to => 'high_voltage/pages#show', :id => 'home'

end
