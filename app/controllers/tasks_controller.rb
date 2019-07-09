# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def find
    @task = Task.find(params[:task_id])
  end

  def new
    @task = Task.new()
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to index_path
  end

  def edit
    @task = Task.find(params[:task_id])
  end

  def update
    # raise
    @task = Task.find(params[:format])
    @task.update(task_params)
    redirect_to index_path
  end

  def destroy
    @task = Task.find(params[:task_id])
    @task.destroy
    redirect_to index_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
