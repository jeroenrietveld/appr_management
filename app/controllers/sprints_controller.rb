class SprintsController < ApplicationController
  before_filter :authenticate_user!

  before_action :set_sprint, only: [:show, :edit, :update, :destroy]

  def index
    @sprints = Sprint.all
  end

  def show
  end

  def new
    @sprint = Sprint.new
  end

  def edit
  end

  def create
    @sprint = Sprint.new(sprint_params)

    respond_to do |format|
      if @sprint.save
        format.html { redirect_to @sprint, notice: 'Sprint was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sprint }
      else
        format.html { render action: 'new' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sprint.update(sprint_params)
        format.html { redirect_to @sprint, notice: 'Sprint was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sprint.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sprint.destroy
    respond_to do |format|
      format.html { redirect_to sprints_url }
      format.json { head :no_content }
    end
  end

  private

    def set_sprint
      @sprint = Sprint.find(params[:id])
    end

    def sprint_params
      params.require(:sprint).permit(:startdate, :enddate, :name)
    end
end
