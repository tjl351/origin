Rails.application.routes.draw do
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resourcehttp://www.google.com/imgres?imgurl=http%3A%2F%2Fimg.moviepilot.com%2Fassets%2FtarantulaV2%2Flong_form_background_images%2Fbatman-superman3_1386164005.jpg&imgrefurl=http%3A%2F%2Fmoviepilot.com%2Fposts%2F2013%2F12%2F04%2Fben-affleck-talks-batman-vs-superman-and-why-we-should-get-very-excited-1191988&h=1080&w=1920&tbnid=I4uUnQIe5jZSPM%3A&zoom=1&docid=IJPDVRu1Qi67XM&ei=TtbGU7abOoak4gSdm4CAAg&tbm=isch&ved=0CFAQMygXMBc&iact=rc&uact=3&dur=351&page=3&start=21&ndsp=10s :products do
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
  
  resources :articles do
      resources :comments
  end
end
