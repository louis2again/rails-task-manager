# 2 - Controller
#
# Generate an empty (no actions) TasksController with the right rails generator.
# For this exercise, do not use resources in your config/routes.rb.
# The goal of this exercise is to re-build the regular CRUD from scratch.

class TasksController < ApplicationController


  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end


  private

  def task_params
    params.require(:Task).permit(:name, :address, :rating)
  end

  def set_task
    @task = Task.find(params[:id])
  end




end
