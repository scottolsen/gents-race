class Rider < ApplicationRecord
  belongs_to :team
  before_save :set_mph

  def set_mph
    self.ytd_mph = (self.ytd_distance / self.ytd_time * 60).round(1)
  end
end
