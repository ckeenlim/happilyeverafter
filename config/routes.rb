Rails.application.routes.draw do

  get 'vendors/search' => 'page#vendors'
  
  
  resources :vendors do
    collection { post :import}
    collection { post :search, to:'vendors#search' }

    
    resources :reviews
  end

  devise_for :users 

 
  root 'page#home'

  get 'page/about'
  get 'page/checklist'

  #resources :user_checklists
  #resources :checklists 
   

  resources :user_todo_items do
    collection { post :generate, to:'user_todo_items#generate'}
    member do
      patch :complete
      patch :reset
    end
  end

  get 'page/contact'
  get 'page/faqs'
  get 'page/vendors'
  get 'page/listings'
  # get 'page/search' => 'page#listings'
  post 'page/checklist' => 'checklist#import', :as => :import_checklist

 

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  resources :posts do
    resources :comments
  end

end
 
