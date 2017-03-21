Rails.application.routes.draw do
  root 'static_pages#home'
  match '/', to: 'static_pages#home', via: 'get'
  match '/privacy_policy', to: 'static_pages#privacy_policy', via: 'get'
  match '/terms_of_service', to: 'static_pages#terms_of_service', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/services', to: 'static_pages#services', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
end
