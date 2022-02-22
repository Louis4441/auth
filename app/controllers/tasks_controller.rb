class TasksController < ApplicationController
  def index
    # @task = Task.all - instead of showing all tasks, we do this
    @tasks = Task.where({ user_id: @current_user.id })
    @task = Task.new
  end

  def create
    @task = Task.new(params["task"])
    @task.user_id = @current_user.id
    @task.save
    redirect_to "/tasks"
  end

  def destroy
    @task = Task.find(params["id"])
    @task.destroy
    redirect_to "/tasks"
  end
end
