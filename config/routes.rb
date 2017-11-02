Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :blog do
    get '/' => 'blog#index'
    resources :posts
  end

  root to: 'static_pages#home'

  get 'about_me' => 'static_pages#about_me'

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

end
