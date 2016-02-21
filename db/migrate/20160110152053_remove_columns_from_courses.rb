class RemoveColumnsFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :business_name, :string
    remove_column :courses, :address, :string
    remove_column :courses, :city, :string
    remove_column :courses, :state, :string
    remove_column :courses, :zip, :string
    remove_column :courses, :phone, :string
    remove_column :courses, :course_type, :string
    remove_column :courses, :course_holes, :string
    remove_column :courses, :course_season, :string
    remove_column :courses, :course_dress_code, :string

  end
end
