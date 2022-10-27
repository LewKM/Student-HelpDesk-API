Rails.application.routes.draw do

   resources :bookmarks,  only: [:create, :update, :destroy]
   resources :questions, only: [:index, :show, :create, :update, :destroy]
   resources :users, only: [:index, :show, :create, :update, :destroy] 
   resources :solutions, only: [:index, :show, :create, :update, :destroy]
   post '/auth/login', to: 'authentication#login' 
  #  return loged in users bookmarks
   get '/mybookmarks', to: "bookmarks#mybookmarks"
   get '/mysolutions', to: "solutions#mysolutions"
   get '/myquestions', to: "questions#myquestions"
 
   #search for questions
   get '/search/:search_term', to: "questions#search"
   get '/filter/:tags', to: "questions#filter"

end
