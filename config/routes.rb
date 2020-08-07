Rails.application.routes.draw do
  resources :addresses do
    get "delete"   
  end
  resources :statements do
    get "delete"   
  end
  resources :statement_types do
    get "delete"   
  end
  resources :agents do
    get "delete"   
  end
  resources :sale_points do
    get "delete"   
  end
  resources :products do
    get "delete"   
  end
  resources :product_categories do
    get "delete"   
  end
  resources :profiles
  #devise_for :users
  resources :permissions do
    get "delete"   
  end
  resources :roles do
    get "delete"   
  end


  get "/dashboard" => "dashboard#index" , as: :dashboard
  get "/situations" => "dashboard#index" , as: :situations


  
    #get "/register" => "registrations#register", as: :registration

    get "arrival_mails/bulk_archive/modal/" => "arrival_mails#bulk_archive_modal", as: :arrival_mails_bulk_archive_modal
    post "arrival_mails/bulk_archive" => "arrival_mails#bulk_archive", as: :arrival_mails_bulk_archive


    get "/departure_mails/bulk_archive/modal/" => "departure_mails#bulk_archive_modal", as: :departure_mails_bulk_archive_modal
    post "/departure_mails/bulk_archive" => "departure_mails#bulk_archive", as: :departure_mails_bulk_archive

    get "archives/arrival_mails" => "arrival_mails#archives", as: :arrival_mails_archives
    get "archives/departure_mails" => "departure_mails#archives", as: :departure_mails_archives

    get "arrival_mail/to_archive/:id" => "arrival_mails#to_archive", as: :arrival_mail_to_archive
    get "departure_mail/to_archive/:id" => "departure_mails#to_archive", as: :departure_mail_to_archive

    #get "arrival/mail/:id/imputations" => "imputations#index" , as: :arrival_mail_imputations
    get "arrival/mail/:id/tasks" => "tasks#index" , as: :arrival_mail_tasks
    #get "imputation/:id/tasks" => "tasks#index" , as: :imputation_tasks
    get "taks/all" => "tasks#search_tasks", as: :search_tasks

    get "/users"     => "custom_users#index", as: :all_users 
    get "/users/unregistered"     => "custom_users#unregistered", as: :unregistered_commission_percentage 
    post "/users/new"     => "custom_users#create", as: :create_user
    get "/users/new"     => "custom_users#new", as: :new_user
    get "/user/edit/:id" => "custom_users#edit", as: :edit_user
    patch "/user/update/:id" => "custom_users#update", as: :udapte_user
    delete "/user/destroy/:id" => "custom_users#destroy", as: :destroy_user
    get "/user/delete/:id" => "custom_users#delete", as: :delete_user
    
    get "/setup/admin" => "admin_setup#new", as: :new_admin
    post "/setup/admin/create" => "admin_setup#create", as: :create_admin


    get "/user/enable/:id" => "custom_users#get_enable", as: :get_enable_user_account
    post "/user/enable/:id" => "custom_users#post_enable", as: :post_enable_user_account
    get "/user/disable/:id" => "custom_users#get_disable", as: :get_disable_user_account
    post "/user/disable/:id" => "custom_users#post_disable", as: :post_disable_user_account


    devise_for :users, path: '', controllers: { 
      registrations: "users/registrations",
      confirmations: 'users/confirmations',
      passwords: "users/passwords",
      sessions: "users/sessions"
          
      }, 
      path_names: {
          sign_in: 'login', 
          sign_out: 'logout', 
          password: 'secret', 
          confirmation: 'verification', 
          unlock: 'unblock', 
          registration: 'signup', 
          sign_up: '' 
      }
    
      devise_scope :user do
        root to: "users/sessions#new"
        authenticated :user do
          root 'dashboard#index', as: :authenticated_root
        end
    
        unauthenticated do
          root 'users/sessions#new', as: :unauthenticated_root
        end
      end


      # Dynamic error pages
      get "/404", to: "errors#not_found"
      get "/422", to: "errors#unacceptable"
      get "/500", to: "errors#internal_error"

    


end
