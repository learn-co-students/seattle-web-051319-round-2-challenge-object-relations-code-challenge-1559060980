
class Venue

  attr_accessor :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def concerts
    Concert.all.select do |concert|
      concert.venue = self
    end
  end


  def bands
    concerts.collect do |concert|
      concert.band
    end

    #` that lists all the bands that have ever played in that venue
  end
end
