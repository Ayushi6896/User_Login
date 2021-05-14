Rails.application.routes.draw do
  devise_scope :user do
    get "/" => "devise/sessions#new"
  end
  get "/home" => "pages#home", as:"home"
  devise_for :users, :controllers => { registrations: 'users/registrations' }, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
end
