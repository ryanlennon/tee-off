class AddStartTimeAndEndTimeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :start_time, :integer
    add_column :courses, :end_time, :integer
  end
end
