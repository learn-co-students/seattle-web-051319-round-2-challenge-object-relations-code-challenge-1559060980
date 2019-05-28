require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here
#bands

lucinda = Band.new("Lucinda Williams", "Charleston")
b52 = Band.new("B52s", "Athens")
rem = Band.new("REM", "Athens")

#venues
bimbos = Venue.new("Bimbos", "SF")
cactus =Venue.new("Cactus Club", "SJ")

#concerts
c1 = Concert.new(2017, b52, bimbos)
c2 =  Concert.new(2017, rem, bimbos)
c3 = Concert.new(2017, b52, cactus)
c4 =  Concert.new(2017, rem, cactus)

binding.pry
