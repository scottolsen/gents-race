class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :captain_email
      t.string :captain_name
      t.string :captain_level
      t.integer :captain_strava_id
      t.string :rider_2_name
      t.string :rider_2_level
      t.integer :rider_2_strava_id
      t.string :rider_3_name
      t.string :rider_3_level
      t.integer :rider_3_strava_id
      t.string :rider_4_name
      t.string :rider_4_level
      t.integer :rider_4_strava_id
      t.string :rider_5_name
      t.string :rider_5_level
      t.integer :rider_5_strava_id

      t.timestamps
    end
  end
end
