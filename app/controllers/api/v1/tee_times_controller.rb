class Api::V1::TeeTimesController < ApplicationController

  def index
    @teetimes = TeeTime.all
  end

  def create
    @tee_time = TeeTime.create(
      user_id: current_user.id,
      course_id: params[:course_id],
      start_time: params[:tee_time_slot],
      price: params[:price],
    )
    redirect_to "/teetimes/#{@tee_time.id}"
  end

end