Rails.application.routes.draw do
  resources :articles do
  	resources :comments
  end
  resources :add_total_post_views_to_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
