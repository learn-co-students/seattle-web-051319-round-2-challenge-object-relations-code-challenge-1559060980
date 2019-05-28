class Concert

  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band = band
    @venue = venue
    @@all << self
  end



  def self.all
    @@all
  end

  def hometown_show? #` that returns true if the concert is in the band's hometown
    if venue == band.hometown
      true
    else
      false
    end

  end

end
