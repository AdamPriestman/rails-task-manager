Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # List all tasks
  get "tasks", to: "tasks#index"
  # Get the input for a new task
  get "tasks/new", to: "tasks#new"
  # Show a task
  get "tasks/:id", to: "tasks#show", as: :task
  # Create a new task
  post "tasks", to: "tasks#create"
  # Get form to edit task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  # Patch form to edit task
  patch "tasks/:id", to: "tasks#update"
  # Delete a task
  delete "tasks/:id", to: "tasks#destroy"
end
