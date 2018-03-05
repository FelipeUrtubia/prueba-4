Rails.application.routes.draw do
  resources :todos do
    collection do
      post 'check/:todo_id', to: 'todos#check', as: 'check'
    end
  end
  devise_for :users

  root 'todos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
