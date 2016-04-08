Rails.application.routes.draw do

  get 'vendors/search' => 'page#vendors'
  
  
  resources :vendors do
    collection { post :import}
    collection { post :search, to:'vendors#search' }

    
    resources :reviews
  end

  devise_for :users, controllers: {omniauth_callbacks: 'omniauth_callbacks'}

 
  root 'page#home'

  get 'page/about'
  get 'page/checklist'

  #resources :user_checklists
  #resources :checklists 
   

  resources :user_todo_items do
    collection { post :generate, to:'user_todo_items#generate'}
    member do
      put :complete
      put :reset
    end
  end


  resources :budget_details do
    collection { post :generate, to:'budget_details#generate'}
  
  end

  get 'page/contact'
  get 'page/faqs'
  get 'page/vendors'
  get 'page/listings'
  post 'page/search' => 'page#listings'
  post 'page/checklist' => 'checklist#import', :as => :import_checklist

 

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  resources :posts do
    member do
      resources :comments
    end
  end

  resources :blogs do
    member do
      resources :comments
      put "like", to: "blogs#upvote"
    end
  end

  resources :categories 

end
 
