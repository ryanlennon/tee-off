class Image < ActiveRecord::Base
  belongs_to :forecast
  belongs_to :course
end
