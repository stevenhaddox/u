U::Application.routes.draw do

  resources :links, :except => [:destroy, :edit]

  root :to => 'high_voltage/pages#show', :id => 'home'

  match 'railsthemes/landing' => 'railsthemes#landing'
  match 'railsthemes/inner' => 'railsthemes#inner'
  match 'railsthemes/jquery_ui' => 'railsthemes#jquery_ui'
end
