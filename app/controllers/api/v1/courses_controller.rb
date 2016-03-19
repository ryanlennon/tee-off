class Api::V1::CoursesController < ApplicationController

  def index
    @courses = Course.near("San Diego", 50)

    # if params[:location].present?
    #   @courses = Course.near(params[:location], params[:distance] || 50, order: :distance)
    # else
    #   @courses = Course.near("San Diego", 50)
    # end
  end

end