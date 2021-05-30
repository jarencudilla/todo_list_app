class TasksController < ApplicationController
  # before_action :fetch_category
  
  def index
    @categories = Category.all

    category_1 = params[:category_1]

    if !category_1.nil?
      @tasks = Task.where(:category_id => category_1)
    else
      @tasks = Task.all
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(task_params)

    if @task.valid?
      @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @task
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])

    @task.destroy
    redirect_to :action => :index
  end
  
  private
  def task_params
    params.require(:task).permit(:task_name,:task_details, :category_id)
  end

  # def fetch_category
  #   @category = Category.find(params[:category_id])
  # end
end
