class Forecast < ActiveRecord::Base
  has_many :images
  belongs_to :course
end
