class TasksController < ApplicationController

# As a user, I can list tasks
  def index
    @tasks = Task.all
  end

  def show; end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path(@task)
    else
      render 'new.html.erb'
    end
  end
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task

  private

  def task_params
    params.require(:task).permit(:title, :deails, :completed)
  end
end
