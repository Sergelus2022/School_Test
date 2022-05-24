Rails.application.routes.draw do
  resources :teachers do
    collection do
      get 'list'
    end
  end

  root "teachers#index"
end
