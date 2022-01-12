Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql" if Rails.env.development?
  post "/graphql", to: "graphql#execute"
  root to: "home#show"

  resources :cards do
    resources :tasks
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
