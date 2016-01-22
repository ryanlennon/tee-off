class CoursesController < ApplicationController

  def index
    @courses = Course.all
    @courses_five = Course.all.limit(5)
    #@course = Course.find_by(id: params[:id])


  end

  def new
    
  end

  def create


    
  end

  def update
    @course = Course.find_by(id: params[:id])
  end

  def edit
    @course = Course.find_by(id: params[:id])
  end

  def show
    @course = Course.find_by(id: params[:id])
    forecasts = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20location%3D%22#{@course.e_postal}%22&format=json&diagnostics=true&callback=").body
    weather = forecasts["query"]["results"]["channel"]["item"]["description"]
    @forecast = weather.split("<br />\n<br />")[0]
    @image = Image.find_by(id: params[:id])
    #@tee_times = []
    #@course.tee_time_slots.each do |tee_time_slot|
     # @tee_times << {
      #  title: 'slot',
       # start: tee_time_slot,
        #end: tee_time_slot + 15.minutes,
        #taken:  @course.tee_time_taken?(tee_time_slot)
      #}
    #end
    #@available_tee_times = []
    #@course.tee_time_slots.each do |tee_time_slot|
      #@available_tee_times << {
        #title: 'slot',
        #start: tee_time_slot,
        #end: tee_time_slot + 15.minutes,
        #available:  !@course.tee_time_taken?(tee_time_slot)
      #}
    #end


    
    # start_time = Time.parse(@course.start_time)
    # end_time = Time.parse(@course.end_time)
    # interval = 15.minutes
    # @tee_times = []
    # while start_time < end_time
    #   @tee_times << start_time
    #   start_time += interval
    # end
    # @tee_time_slots = @course.tee_time_slots

      #@available = @tee_times.map{|teetime| {teetime => "Available"}}
      #@available.each_with_index do |(time, open), index|
        
  end

  def destroy
  end


end
