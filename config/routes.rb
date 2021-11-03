Rails.application.routes.draw do
  api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
    resources :users, only: %i[index show]
  end
end
