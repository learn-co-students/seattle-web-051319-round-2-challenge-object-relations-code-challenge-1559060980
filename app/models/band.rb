

class Band

  attr_accessor :name, :hometown

  @@all = []

  def initialize(name, hometown)
    @name = name
    @hometown = hometown
    @@all << self
  end

#Band` should respond to `Band#name` and `Band#hometown`

  def self.all
    @@all
  end

 def self.all_introductions
     @@all.collect do |band|
      puts "Hello, we are #{band.name} and we're from #{band.hometown}"
    end
  end

  def play_in_venue(date, venue)
    c1 = Concert.new(date, self, venue)

    #` that takes a venue and date as a string as arguments and associates the band to that venue
  end

  def concerts
    Concert.all.select do |concert|
      concert.band = self
    end
    #` should return an array of all that band's concerts
  end
  def venues
    concerts.collect do |concert|
      concert.venue
    end
    #` that returns an array of all the venues the band plays in
  end
end
