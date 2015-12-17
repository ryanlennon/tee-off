class CreateForecasts < ActiveRecord::Migration
  def change
    create_table :forecasts do |t|
      t.string :city
      t.string :state
      t.string :temp
      t.string :conditions
      t.string :wind_speed
      t.string :image_id

      t.timestamps null: false
    end
  end
end
