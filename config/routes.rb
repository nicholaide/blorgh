Blorgh::Engine.routes.draw do
  get "biomed/index"

  resources :phonteles


  resources :postals


  resources :posts do
    resources :comments
  end
  
  root :to => "posts#index"


end
