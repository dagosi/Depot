Depot::Application.routes.draw do
<<<<<<< HEAD
  resources :users

  resources :orders
=======
  get 'admin' => "admin#index"
>>>>>>> 024e557a32f703edd5a3dec7080c985ac3dc6b99

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  scope '(:locale)' do
    resources :users
    resources :orders
    resources :line_items
    resources :carts
    
    resources :products do
      get :who_bought, :on => :member
    end

    root :to => 'store#index', :as => 'store' # :as creates a path variable, in this case store_path
  end
end
