class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :tee_time
end
