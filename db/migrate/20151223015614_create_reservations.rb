class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :tee_time_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
