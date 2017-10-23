Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'

  get 'about_me' => 'static_pages#about_me'
  
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

end
