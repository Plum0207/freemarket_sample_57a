Rails.application.routes.draw do
  root 'items#index'
  
  resources :items do
    collection do
      get 'get_children_category', defaults: { format: 'json' }
      get 'get_grandchildren_category', defaults: { format: 'json' }
    end
    member do
      get 'buy'
      post 'pay'
      get 'done'
      get 'delete_confirmation'
    end
  end

  # devise_user_controller
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'signup'
  }

  resources "signup", only: [:index, :create], path: "/signup" do
    collection do
      get 'user_info'
      post 'user_tel'
      post 'user_tel_verification'
      post 'user_address'
      get 'user_complete' # 登録完了後のページ
    end
  end

  resources "users",only: :logout, path: '' do
    collection do
      get 'logout'
    end
  end

  resources "users",only: [:index,:profile,:card,:purchase,:registration], path: 'mypage' do
    collection do
      get 'profile'
      get 'card'
      get 'notifications'
      get 'todo'
      get 'purchase'
      get 'registration'
    end
  end
  
  patch 'mypage/profile/:id' => 'users#update', as: "mypage_profile"
  
  resources :users, only: [:listing, :in_progress, :completed], path: '/mypage/listings' do
    collection do
      get 'listing'
      get 'in_progress'
      get 'completed'
    end
  end
  

  resources :users, only: [:identification,:purchased], path: '/mypage' do
    collection do
      get 'identification'
      get 'purchased'
    end
  end 
  
  resource :users, action: :create_identification, only: :create_identification, path: '/mypage' do
    collection do
      post 'identification'
    end
  end

  resources :cards, only: [:create, :new, :show, :destroy] do
    member do
      post 'show', to: 'cards#show'
      get  'show', to: 'cards#show'
      delete 'destroy', as: 'destroy'
    end
    collection do
      get  'confirmation'
    end
  end
end
