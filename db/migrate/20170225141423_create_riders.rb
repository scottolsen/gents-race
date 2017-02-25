class CreateRiders < ActiveRecord::Migration[5.0]
  def change
    create_table :riders do |t|
      t.integer :team_id
      t.string :name
      t.string :level
      t.integer :strava_id
      t.decimal :ytd_distance
      t.decimal :ytd_time
      t.integer :ytd_elevation
      t.integer :ytd_rides
      t.decimal :all_time_distance
      t.decimal :all_time_time
      t.integer :all_time_elevation
      t.integer :all_time_rides

      t.timestamps
    end
  end
end
