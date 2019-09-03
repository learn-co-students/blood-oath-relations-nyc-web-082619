require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rj = Follower.new("RJ", "36", "Sup")
wilf = Follower.new("Wilf", "23", "Nice")
jallen = Follower.new("Jallen", "26", "Satoshi is Female")

chipotle = Cult.new("Chipotle", "Denver", "1993", "Food with Integrity")
shake_shack = Cult.new("Shake Shack", "New York", "2008", "Shaken not Shacked")
mcdonalds = Cult.new("McDonalds", "Denver", "1954", "Lie to Children")

oath1 = Oath.new("2083-12-06", rj, mcdonalds)
oath2 = Oath.new("1996-06-07", wilf, mcdonalds)
oath3 = Oath.new("2013-02-14", jallen, chipotle)



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
