Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/reasons", to: "pages#reasons", as: "reasons"
  get 'love_letter', to: 'pages#love_letter'


  root "pages#home"
  get "/reasons/1", to: "reasons#one", as: "reason_one"
  get "/reasons/2", to: "reasons#two", as: "reason_two"
  get "/reasons/3", to: "reasons#three", as: "reason_three"
  get "/reasons/4", to: "reasons#four", as: "reason_four"
  get "/reasons/5", to: "reasons#five", as: "reason_five"
  get "/reasons/6", to: "reasons#six", as: "reason_six"
  get "/reasons/7", to: "reasons#seven", as: "reason_seven"
  get "/reasons/8", to: "reasons#eight", as: "reason_eight"
  get "/reasons/9", to: "reasons#nine", as: "reason_nine"
  get "/reasons/10", to: "reasons#ten", as: "reason_ten"

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
