Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy', as: :logout_path
  end

  resources :clochers do
    collection do
      get 'planning'
    end
  end
  resources :transactions, except: :new do
    collection do
      get 'messe'
      get 'don'
      get 'don_messe'
    end
  end

  resources :donnateurs

  resources :morts do 
    member do
      get 'historique'
    end
    collection do 
      get 'top20'
    end
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'
end
