require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "New York", 2019, "make a slogan", 2)
cult2 = Cult.new("cult1", "New York", 2019, "make a slogan", 2)
cult3 = Cult.new("cult1", "New York", 2019, "make a slogan", 2)
cult = Cult.new("cult1", "New York", 2019, "make a slogan", 2)


eugenia = Follower.new("Eugenia", 25, "coding is cool")
eugenia1 = Follower.new("Eugenia", 25, "coding is cool")
eugenia2 = Follower.new("Eugenia", 25, "coding is cool")
eugenia = Follower.new("Eugenia", 25, "coding is cool")

bloodoath_cult = cult1.recruit_follower(eugenia)

bloodoath_cult.initiation_date



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
