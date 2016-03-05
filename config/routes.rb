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
  
  #post 'page/checklist' => 'checklist#import', :as => :import_checklist

 

  match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]

  resources :posts

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
