require 'mechanize'

class StravaScraper

  def run
    strava_id = 736553
    mechanize = Mechanize.new

    page = mechanize.get("https://www.strava.com/athletes/#{strava_id}")
    puts page.title
    p page.css('#activity-totals li strong').first.children.first.text.to_d.to_s

    page.search('#activity-totals li').each do |li|
      p li.at('strong').children.first.text
    end

    page.search('section.athlete-records td').each do |td|
      p td.text
    end
  end
end
