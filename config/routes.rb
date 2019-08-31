Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/new'
  get 'user/create'
  get 'user/edit'
  get 'user/update'
  get 'user/destroy'
  root to: 'home#index'
  namespace :api, format: 'json' do
    resources :tasks, only: [:index, :create, :update]
  end
#  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
