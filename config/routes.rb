Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"
  resources 'blog_posts', path: 'blog'
  post 'email_signup' => 'blog_posts#email_signup'
end
