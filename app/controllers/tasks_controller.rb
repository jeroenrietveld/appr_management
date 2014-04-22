class TasksController < ApplicationController
  before_filter :authenticate_user!

  before_filter :new_task, only: [:new, :create]
  before_filter :load_task, only: [:show, :update, :edit, :destroy]

  def index
    @tasks = Task.all
  end

  def new
  end

  def create
    if @task.save
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  def show
  end

  def update
    if @task.update_attributes(task_params)
      redirect_to :action => 'index'
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @task.destroy

    redirect_to :action => 'index'
  end

  protected

    def new_task
      p = task_params unless !params[:task]
      @task = Task.new(p)
    end

    def load_task
      @task = Task.find(params[:id])
    end

  private

    def task_params
      params.require(:task).permit(:name, :priority_id, :user_id, :estimation, :sprint_id)
    end
end
