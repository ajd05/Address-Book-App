Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'account/createAccount'
  get 'account/logIn'
  get 'contacts/index'
  get 'contacts/home'
  get 'contacts/create'
  get 'contacts/new'
  get 'contacts/delete'
  get 'contacts/edit'
  get 'contacts/show'
  get 'welcome/index'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  get 'contacts/provideInfo'
  
  resources :sessions, only: [:create, :destroy]
  
  resources :contacts 
  
  resources :users do
    resources :contacts
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
