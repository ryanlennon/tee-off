class AddColumnsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :biz_name, :string
    add_column :courses, :e_address, :string
    add_column :courses, :e_city, :string
    add_column :courses, :e_state, :string
    add_column :courses, :e_postal, :string
    add_column :courses, :e_zip_full, :string
    add_column :courses, :e_country, :string
    add_column :courses, :loc_county, :string
    add_column :courses, :loc_area_code, :string
    add_column :courses, :loc_FIPS, :string
    add_column :courses, :loc_MSA, :string
    add_column :courses, :loc_PMSA, :string
    add_column :courses, :loc_TZ, :string
    add_column :courses, :loc_DST, :string
    add_column :courses, :loc_LAT_centroid, :string
    add_column :courses, :loc_LAT_poly, :string
    add_column :courses, :loc_LONG_centroid, :string
    add_column :courses, :loc_LONG_poly, :string
    add_column :courses, :biz_phone, :string
    add_column :courses, :metal_spikes, :string
    add_column :courses, :play_five, :string
    add_column :courses, :c_holes, :string
    add_column :courses, :c_type, :string
    add_column :courses, :year_built, :string
    add_column :courses, :c_designer, :string
    add_column :courses, :c_season, :string
    add_column :courses, :guest_policy, :string
    add_column :courses, :dress_code, :string
    add_column :courses, :green_fees, :string
    add_column :courses, :weekend_rates, :string
    add_column :courses, :adv_tee, :string
  end
end
