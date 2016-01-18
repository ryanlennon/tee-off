class Api::V1::TeeTimesController < ApplicationController

  def index
    @teetimes = TeeTime.all
  end

end