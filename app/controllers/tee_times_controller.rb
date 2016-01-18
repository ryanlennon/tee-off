class TeeTimesController < ApplicationController

  def index
    @tee_times = TeeTime.all
  end


  def new
    
  end

  def create
    user_id = current_user.id
    course_id = params[:course_id]
    start_time = params[:tee_time_slot]
    num_of_guests = params[:num_of_guests]
    price = params[:price]
    @tee_time = TeeTime.create(
      user_id: user_id,
      course_id: course_id,
      start_time: start_time,
      num_of_guests: num_of_guests,
      price: price,
    )
    redirect_to "/teetimes/#{@tee_time.id}"
  end

  def edit
    @tee_time = TeeTime.find_by(id: params[:id])
    render :edit

  end

  def show
    @tee_time = TeeTime.find_by(id: params[:id])
    # start_time = Course.find(2).start_time
    #@tee_time = TeeTime.find_by(course_id: params[:course_id])
    #@course = @tee_time.course

  end

  def update
    @tee_time = TeeTime.find_by(id: params[:id])
    @tee_time.update(
      num_of_guests: params[:num_of_guests]

      )
    flash[:success] = "Number of guests has been updated!"
    redirect_to "/teetimes/#{@tee_time.id}"
  end

  def destroy
  end
end
