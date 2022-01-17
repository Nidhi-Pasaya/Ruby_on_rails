Rails.application.routes.draw do
  get 'admin/login'
  root 'admin#login'
  get 'admin/logout'
  post 'admin/login'
  resources :student_profiles
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
