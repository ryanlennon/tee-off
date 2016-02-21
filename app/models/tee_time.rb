class TeeTime < ActiveRecord::Base
  belongs_to :purchaser, class_name: "User", foreign_key: "user_id"
  belongs_to :course
  has_many :reservations
  has_many :users, through: :reservations

end


