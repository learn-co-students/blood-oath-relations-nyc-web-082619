require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Cult.new("boonies", "brooklyn", 1979, "love your boonie")
c2 = Cult.new("babies", "queens", 1989, "love your baby")
c3 = Cult.new("loolies", "bronx", 1969, "love your loolie")

f1 = Follower.new("anya", 29, "small up yaself, man")
f2 = Follower.new("brian", 40, "be free now")
f3 = Follower.new("diederik", 33, "mooooo")

bo1 = BloodOath.new(c1, f2, 2010)
bo2 = BloodOath.new(c1, f1, 2011)
bo3 = BloodOath.new(c3, f1, 2013)
bo4 = BloodOath.new(c2, f2, 2010)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
