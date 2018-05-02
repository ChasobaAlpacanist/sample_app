Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/static_pages/home', to: 'static_pages#home', as: 'home_path'
  get '/static_pages/help', to: 'static_pages#help', as: 'help_path'
  get '/static_pages/about', to: 'static_pages#about', as: 'about_path'
  root 'hello#show'
end
