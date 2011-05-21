U::Application.routes.draw do

  resources :links, :except => [:destroy, :edit]

  root :to => 'high_voltage/pages#show', :id => 'home'

end
