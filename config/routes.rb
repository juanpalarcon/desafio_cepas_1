Rails.application.routes.draw do
  resources :jobtitles
  resources :magazines
  resources :oenologists
  devise_for :users
  resources :wine_strains
  resources :strains
  resources :wines

  root 'wines#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
