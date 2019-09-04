
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
cult4 = Cult.new("cult4", "New York", 2007, "make proud")


eugenia = Follower.new("Eugenia", 25, "coding is cool")
eugenia1 = Follower.new("Eugenia1", 12, "coding is hard")
eugenia2 = Follower.new("Eugenia2", 20, "coding is fun")
eugenia3 = Follower.new("Eugenia3", 35, "coding is ordering")
eugenia4 = Follower.new("Eugenia4", 35, "coding is ordering")
eugenia5 = Follower.new("Eugenia5", 35, "coding is ordering")
eugenia6 = Follower.new("Eugenia6", 35, "coding is ordering")
eugenia7 = Follower.new("Eugenia7", 35, "coding is ordering")
eugenia8 = Follower.new("Eugenia8", 35, "coding is ordering")
eugenia9 = Follower.new("Eugenia9", 35, "coding is ordering")
eugenia10 = Follower.new("Eugenia10", 35, "coding is ordering")
eugenia11 = Follower.new("Eugenia11", 35, "coding is ordering")
eugenia12 = Follower.new("Eugenia12", 35, "coding is ordering")


bloodoath_A = cult1.recruit_follower(eugenia)
bloodoath_B = cult2.recruit_follower(eugenia1)
bloodoath_C = cult3.recruit_follower(eugenia2)
bloodoath_D = cult2.recruit_follower(eugenia3)
bloodoath_E = cult2.recruit_follower(eugenia)
bloodoath_e = cult2.recruit_follower(eugenia2)
bloodoath_e = cult2.recruit_follower(eugenia2)
bloodoath_e = cult2.recruit_follower(eugenia2)
bloodoath_e = cult2.recruit_follower(eugenia9)
bloodoath_e = cult2.recruit_follower(eugenia4)
bloodoath_e = cult2.recruit_follower(eugenia5)
bloodoath_e = cult2.recruit_follower(eugenia6)
bloodoath_e = cult2.recruit_follower(eugenia7)
bloodoath_e = cult2.recruit_follower(eugenia7)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
