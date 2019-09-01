require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#:name, :location, :founding_year, :slogn
cult1 = Cult.new("Scientology", "California", 1965, "We have Tom Cruise")
cult2 = Cult.new("Heaven's Gate", "California", 1995, "Tennis shoes")
cult3 = Cult.new("Peoples Temple", "New York City", 1935, "We have You!")
cult4 = Cult.new("Angel's Temple", "Thailand", 1856, "MMMMMMMMMMMM")
cult5 = Cult.new("NXIVM", "New York City", 2004, "We have the girl from Smallvile")

#:name, :age, :life_motto
f1 = Follower.new("Tom", 16, "Don't wannt to go to sleep.")
f2 = Follower.new("Jeff", 36, "Don't care")
f3 = Follower.new("Sophia", 19, "Firetrucks")
f4 = Follower.new("Angie", 16, "I don't know")
f5 = Follower.new("Fred", 45, "Helppppppp")



binding.pry

puts "it works"