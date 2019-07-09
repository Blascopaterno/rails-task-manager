# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: 'index'
  get 'tasks/new', to: 'tasks#new', as: 'new'
  post 'tasks', to: 'tasks#create'
  get 'tasks/:task_id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks', to: 'tasks#update', as: "task"
  delete 'tasks/:task_id', to: 'tasks#destroy', as: 'destroy'
  get 'tasks/:task_id', to: 'tasks#find', as: 'find'

end
