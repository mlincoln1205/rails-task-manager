Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Mostra formulario para adicionar novas tasks
  get "tasks/new", to: "tasks#new", as: :new
  # Mostra detalhes das tasks
  get "tasks/:id", to: "tasks#show", as: :task

  # Lista todas as tasks
  get "tasks", to: "tasks#index"
  # mostra formulário para editar tasks
  get "tasks/.:id/edit", to: "tasks#edit"

  # Cria novas Tasks
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit", as: :edit

  patch "tasks/:id", to: "tasks#update"

  delete "tasks/:id", to: "tasks#destroy"
end
