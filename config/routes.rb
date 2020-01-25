Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read all tasks
  get 'tasks', to: 'tasks#index'

  # read one task
  get 'tasks/:id', to: 'tasks#show'

  # create one task
  # 1st request to get the form
  # 2nd request to post params
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # update one task
  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update'

  # delete one task
  delete 'tasks/:id', to: 'tasks#destroy'
end
