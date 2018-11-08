Rails.application.routes.draw do
  get 'account/createAccount'
  get 'account/logIn'
  get 'contacts/index'
  get 'contacts/create'
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
