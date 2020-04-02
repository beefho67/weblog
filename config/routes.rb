Rails.application.routes.draw do
  devise_for :authors, controllers: { omniauth_callbacks: 'authors/omniauth_callbacks' }
  # devise_scope :author do
  #   delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_author_session
  # end
  resources :posts do
    resources :comments
  end  
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
