require 'mechanize'

class StravaScraper

  def initialize(rider)
    @rider = rider
    @page = Mechanize.new.get("https://www.strava.com/athletes/#{rider.strava_id}")

    unless @page.uri.to_s == 'https://www.strava.com/'
      process
    end
  end

  def process
    puts @page.title
    @rider.update_attributes(params)
  end

  private

  def params
    {
      ytd_distance: distance(ytd_tds[0]),
      ytd_time: time(ytd_tds[1]),
      ytd_elevation: elevation(ytd_tds[2]),
      ytd_rides: rides(ytd_tds[3]),
      all_time_distance: distance(all_tds[0]),
      all_time_time: time(all_tds[1]),
      all_time_elevation: elevation(all_tds[2]),
      all_time_rides: rides(all_tds[3])
    }
  end

  def ytd_tds
    @ytd_tds ||= @page.search('section.athlete-records table')[0].search('td')
  end

  def all_tds
    all_tds ||= @page.search('section.athlete-records table')[1].search('td')
  end

  def distance(td)
    td.text.gsub('mi', '')
  end

  def time(td)
    time = td.text.gsub('h', '').gsub('m', '').split
    time[0].to_i * 60 + time[1].to_i
  end

  def elevation(td)
    td.text.gsub('ft', '').gsub(',', '')
  end

  def rides(td)
    td.text
  end

end
