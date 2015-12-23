class CreateTeeTimes < ActiveRecord::Migration
  def change
    create_table :tee_times do |t|
      t.decimal :price, precision: 6, scale: 2
      t.string :date
      t.string :start_time
      t.string :end_time
      t.string :num_of_guests
      t.integer :user_id
      t.integer :course_id
      t.decimal :weekend_rates, precision: 6, scale: 2

      t.timestamps null: false
    end
  end
end
