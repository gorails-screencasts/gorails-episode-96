Rails.application.routes.draw do
  devise_for :users

  resources :forum_threads do
    resources :forum_posts
  end

  resources :notifications do
    collection do
      post :mark_as_read
    end
  end

  root to: "forum_threads#index"
end
