class TodosController < ApplicationController
  before_action :set_todo, :only => [:show, :edit, :update, :destroy, :checked]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      redirect_to todos_url
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @todo.update_attributes(todo_params)
      redirect_to todos_path(@todo)
    else
      render :edit
    end
  end
  def destroy
    @todo.destroy
    redirect_to todos_url
  end
  def checked
    if @todo.check_box == false
      @todo.update_attribute(:check_box, true)
    else
      @todo.update_attribute(:check_box, false)
    end
    redirect_to todos_path(@todo)
  end
  private
  def set_todo
    @todo = Todo.find(params[:id])
  end
  def todo_params
    params.require(:todo).permit(:title, :due_date, :description, :check_box)
  end
end
