Rails.application.routes.draw do
  resources :students do
    collection do
      get 'search'
    end
  end
  resources :departments do
    collection do
      get 'search'
    end
  end
  resources :semesters
  resources :courses
  resources :professors do
    collection do
      get 'search'
    end
  end
  resources :sections
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "students#index"

end
