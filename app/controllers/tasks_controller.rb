class TasksController < ApplicationController
  # route: /tasks
  # method: GET
  # desc: gets all tasks
  def list
    @tasks = Task.all
  end

  # route: /tasks/:id
  # method: GET
  # desc: gets a single task
  def singletask
    @singletask = Task.find(params[:id])
  end

  # route: /tasks
  # method: POST
  # desc: adds a new task
  def new
    @singletask = Task.new
  end

  def create
    @singletask = Task.new(singletask_params)
    @singletask.save
    redirect_to task_path(@singletask)
  end

  def edit
    @singletask = Task.find(params[:id])
  end

  def update
    @singletask = Task.find(params[:id])
    @singletask.update(singletask_params)
    redirect_to task_path(@singletask)
  end

  def destroy
    @singletask = Task.find(params[:id])
    @singletask.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def singletask_params
    params.require(:task).permit(:title, :details)
  end
end
