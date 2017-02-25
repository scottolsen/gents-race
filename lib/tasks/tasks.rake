task :scrape => :environment do
  Rider.where("strava_id is not null").each do |r|
    StravaScraper.new(r)
  end
end
