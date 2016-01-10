class Course < ActiveRecord::Base
  has_many :reservations, through: :tee_times
  has_many :tee_times
  has_many :forecasts
  has_many :comments
  has_many :images
  
end
