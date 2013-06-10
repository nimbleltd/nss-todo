class ListsController < ApplicationController

  def index
    @lists = List.all
    @tasks = Task.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(params[:list])
    # @tasks.save
    # flash here
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
  end

end
