Rails.application.routes.draw do
  get 'notices/index'
  get 'notices/new'
  get 'notices/create'
  get 'notices/edit'
  get 'notices/update'
  get 'notices/destroy'
  get 'step_colors/update'
  get 'step_colors/destroy'
  get 'relationships/create'
  get 'relationships/destroy'


  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'homes#search', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get '/about' => 'homes#about', as:'homes_about'
  get '/goodbye' => 'homes#goodbye', as:'homes_goodbye'
  get '/useful' => 'homes#useful', as:'homes_useful'
  get '/search' => 'homes#search', as:'homes_search'
  get '/s_after' => 'homes#search_after', as:'homes_search_after'
  get '/proall' => 'homes#pro_all', as:'homes_pro_all'
  get '/i_show' => 'progresses#iframe_show', as:'i_show'
  get '/i_edit' => 'progresses#iframe_edit', as:'i_edit'

  get 'inquiries' => 'inquiries#index'
  post 'inquiries/confirm' => 'inquiries#confirm'
  post 'inquiries/thanks' => 'inquiries#thanks'

  resources :users, only:[:index, :show, :edit, :update, :destroy] do
    resources :graffitis, only:[:index, :show, :new, :create, :destroy]
    resources :progresses, only:[:edit, :show, :new, :create, :update, :destroy] do
      resource :likes, only: [:create, :destroy]
      resource :worries, only: [:create, :destroy]
    end
    member do
      get :following, :followers
    end
  end
  resources :prints, only:[:new, :create, :edit, :update, :destroy] do
    resource :favorite_prints, only: [:create, :destroy]
  end
  resources :venues, only:[:show, :new, :create, :edit, :update, :destroy] do
    resource :favorite_venues, only: [:create, :destroy]
  end
  resources :steps, only:[:create, :update, :destroy]
  resources :relationships, only:[:create,:destroy]
  resources :step_colors, only:[:update, :destroy]
  resources :notices, only:[:index, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
