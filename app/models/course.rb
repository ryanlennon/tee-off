class Course < ActiveRecord::Base
  has_many :reservations, through: :tee_times
  has_many :tee_times
  has_many :forecasts
  has_many :comments
  has_many :images

  geocoded_by :full_address
  after_validation :geocode

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

  def full_address
    "#{e_address}, #{e_city}, #{e_state}"
  end

  def tee_time_slots
    course_start_time = Time.parse(start_time)
    course_end_time = Time.parse(end_time)
    interval = 15.minutes
    computed_tee_times = []
    while course_start_time < course_end_time
      computed_tee_times << course_start_time
      course_start_time += interval
    end
    computed_tee_times
  end

  def tee_time_taken?(input_tee_time)
    tee_times.each do |tee_time|
      if Time.parse(tee_time.start_time) == input_tee_time
        return true
      end
    end
    return false
  end

  def tee_time_slot_message(input_tee_time)
    if tee_time_taken?(input_tee_time)
      "Closed"
    else
      "Available"
    end
  end

end
