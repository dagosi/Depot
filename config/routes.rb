Depot::Application.routes.draw do
  get 'admin' => "admin#index"

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
