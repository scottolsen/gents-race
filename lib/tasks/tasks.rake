task :scrape => :environment do
  StravaScraper.new.run
end
