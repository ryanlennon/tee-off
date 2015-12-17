class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :business_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :course_type
      t.string :course_holes
      t.string :course_season
      t.string :course_dress_code

      t.timestamps null: false
    end
  end
end
