Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # For details on the how to customize you REDIRECT HOOKS "after singin or sign out", see https://github.com/heartcombo/devise#strong-parameters
end
