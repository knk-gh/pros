Rails.application.routes.draw do
  get 'step_colors/update'
  get 'step_colors/destroy'
  get 'relationships/create'
  get 'relationships/destroy'
  root to: 'homes#index'

  devise_for :users, controllers: {
  confirmations: 'users/confirmations',
  passwords:     'users/passwords',
  registrations: 'users/registrations',
  sessions:      'users/sessions',
}

  get '/about' => 'homes#about', as:'homes_about'
  get '/goodbye' => 'homes#goodbye', as:'homes_goodbye'
  get '/useful' => 'homes#useful', as:'homes_useful'

  # get 'inquiries/index'
  # get 'inquiries/confirm'
  # get 'inquiries/thanks'
  get 'inquiries' => 'inquiries#index'
  post 'inquiries/confirm' => 'inquiries#confirm'
  post 'inquiries/thanks' => 'inquiries#thanks'

  resources :users, only:[:index, :show, :edit, :update, :destroy] do
    resources :graffitis, only:[:show, :new, :create, :destroy]
    resources :progresses
    member do
      get :following, :followers
    end
  end
  resources :prints, only:[:new, :create, :edit, :update, :destroy]
  resources :venues, only:[:show, :new, :create, :edit, :update, :destroy]
  resources :steps, only:[:create, :update, :destroy]
  resources :relationships, only:[:create,:destroy]
  resources :step_colors, only:[:update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
