json.extract! team, :id, :name, :captain_email, :captain_name, :captain_level, :captain_strava_id, :rider_2_name, :rider_2_level, :rider_2_strava_id, :rider_3_name, :rider_3_level, :rider_3_strava_id, :rider_4_name, :rider_4_level, :rider_4_strava_id, :rider_5_name, :rider_5_level, :rider_5_strava_id, :created_at, :updated_at
json.url team_url(team, format: :json)
