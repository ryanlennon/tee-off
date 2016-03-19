class CoursesController < ApplicationController

  def index
    @courses = Course.all
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
  end

  def destroy
  end


end
