class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def show
    @course = Course.find_by(id: params[:id])
  end

  def destroy
  end
end
