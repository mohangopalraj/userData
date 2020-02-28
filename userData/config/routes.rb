Rails.application.routes.draw do
  #mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'app_dashboard/index' => 'app_dashboard'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end

