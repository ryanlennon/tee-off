class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :course_id
      t.integer :forecast_id
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps null: false
    end
  end
end
