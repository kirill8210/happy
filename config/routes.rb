Rails.application.routes.draw do
  
  root  'static_pages#index' 
  match '/contact',      to: 'contact#new',             via: 'get'
  match '/contact',      to: 'contact#create',          via: 'post' 
  match '/more',         to: 'static_pages#more',       via: 'get'
  match '/piramida',     to: 'static_pages#piramida',   via: 'get'
  match '/novosti',      to: 'static_pages#novosti',    via: 'get'
  match '/egypt',        to: 'static_pages#egypt',      via: 'get'
end
