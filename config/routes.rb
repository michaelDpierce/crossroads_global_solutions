Rails.application.routes.draw do
  root 'static_pages#home'
  match '/', to: 'static_pages#home', via: 'get'
  match '/privacy_policy', to: 'static_pages#privacy_policy', via: 'get'
  match '/terms_of_service', to: 'static_pages#terms_of_service', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/send_message', to: 'static_pages#send_message', via: 'post'
  match '/services', to: 'static_pages#services', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/free_quote', to: 'static_pages#free_quote', via: 'get'
  match '/request_quote', to: 'static_pages#request_quote', via: 'post'
  match '/thank_you', to: 'static_pages#thank_you', via: 'get'
  match '/testimonials', to: 'static_pages#testimonials', via: 'get'

end
