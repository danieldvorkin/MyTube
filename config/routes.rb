Rails.application.routes.draw do
  get 'videos' => 'videos#index'

  post 'videos' => 'videos#create'
  get 'videos/new' => 'videos#new'
end
