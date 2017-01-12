Rails.application.routes.draw do

  resources :posts
  resources :advertisements, only: [:index, :show, :new, :create]

  get 'about' => 'welcome#about'
  get 'contact' => 'wecome#contact'
  get 'faq' => 'welcome#faq'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
