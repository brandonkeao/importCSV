Rails.application.routes.draw do
  resources :results do
    collection { post :accept_csv }
  end
  
  root to: "results#index"

  #get 'results/index'
  #get 'results/accept_csv'

end
