class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.create(params[:task])
    # @tasks.save
    # flash here
    redirect_to tasks_path
  end

  def show
    @tasks = Task.find(params[:id])
  end

end
