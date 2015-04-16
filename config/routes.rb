Rails.application.routes.draw do
  root 'videos#index'
  get 'videos' => 'videos#index'

  post 'videos' => 'videos#create'
  get 'videos/new' => 'videos#new'
end
