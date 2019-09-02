require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "New York", 2019, "make a slogan")
cult2 = Cult.new("cult2", "New Jersey", 2008, "make a slogan")
cult3 = Cult.new("cult3", "Taxes", 2010, "make a slogan")


eugenia = Follower.new("Eugenia", 25, "coding is cool")
eugenia1 = Follower.new("Eugenia1", 12, "coding is hard")
eugenia2 = Follower.new("Eugenia2", 20, "coding is fun")
eugenia3 = Follower.new("Eugenia3", 35, "coding is ordering")


bloodoath_A = cult1.recruit_follower(eugenia)
bloodoath_B = cult2.recruit_follower(eugenia1)
bloodoath_C = cult3.recruit_follower(eugenia2)
bloodoath_D = cult1.recruit_follower(eugenia3)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
