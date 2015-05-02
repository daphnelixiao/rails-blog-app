Rails.application.routes.draw do
  devise_for :users

  #Define which View you go to when you are at ROOT - here it goes to minion page under the welcome folder
  root 'welcome#index'
  
  #Create all routes for posts
  resources :posts, only: [:index, :show, :new, :create]

end
