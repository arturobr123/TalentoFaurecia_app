Rails.application.routes.draw do


  resources :evaluation_hiring_managers


  get "usuarios/ver_respuestas_user" => 'usuarios#ver_respuestas_user', :as => :ver_respuestas_user

  resources :answer_questions
  get 'game/siguinte_pregunta'
  get 'game/responder'
  get 'game/home' => 'game#home', :as => :gameHome
  get 'game/gameOver' => 'game#gameOver', :as => :gameOver

  resources :questions_first_filters


  get 'search/create'
  get 'search/search_students'
  get 'search/search_vacantes_Admin'
  get 'search/search_evaluaciones_Admin'
  get 'search/search_vacantes_aplicadas_Admin'

  resources :notifications, only: [:index,:update]
  get 'notifications/index'
  get "notifications/view_all_notifications" => 'notifications#view_all_notifications', :as => :view_all_notifications
  
  resources :evaluations
  resources :vacantes
  resources :usuarios, as: :users,only: [:show,:update ,:edit, :index]
  resources :administradores, as: :admins,only: [:show,:update ,:edit, :index]

  resources :vacante_aplicadas


  devise_for :admins,controllers: { registrations: 'admins/registrations' }

  devise_for :users

  get "main/adminRegister" => 'main#adminRegister', :as => :adminRegister
  get "main/adminLogin" => 'main#adminLogin', :as => :adminLogin

  authenticated :admin do
    root 'main#homeAdmin'
  end

  authenticated :user do
  	root 'main#home'
  end

  unauthenticated :user do
    root 'main#unregistered'
  end

  unauthenticated :admin do
    root 'main#adminLogin'
  end

   

  

  mount ActionCable.server => '/cable'
  #mount Sidekiq::Web => '/sidekiq'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
