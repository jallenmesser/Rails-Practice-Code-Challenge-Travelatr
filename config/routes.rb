Rails.application.routes.draw do

  get '/bloggers', to: 'bloggers#index'
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'
  post '/bloggers', to: 'bloggers#create'

  get '/destinations', to: 'destinations#index'
  get '/destinations/:id', to: 'destinations#show', as: 'destination'

  get '/posts', to: 'posts#index'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
  post '/posts', to: 'posts#create'

  patch '/posts/:id/like', to: 'posts#like', as: 'like_post'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
