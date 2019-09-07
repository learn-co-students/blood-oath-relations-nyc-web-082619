require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ralph = Follower.new("Ralph", 34, "Love is free enjoy it!!!!")
biff = Follower.new("Biff", 19, "Rock out man.")
kippa = Follower.new("Kippa", 34, "I live with the mole people!!!")
jeff = Follower.new("Jeff", 19, "Drink beer and have fun")
laura = Follower.new("Laura", 27, "Live free!")
scott = Follower.new("Scott", 32, "Come at me bro")
darnell = Follower.new("Darnell", 34, "I'm big D")
kienan = Follower.new("Kienan", 31, "I love girls")
will = Follower.new("Will", 33, "I want to smoke")
tania = Follower.new("Tania", 33, "The sky is my home.")

scientology = Cult.new("Scientology", "Los Angeles", 1960, "Dianetics")
manson_fam = Cult.new("Manson Fam", "San Francisco", 1975, "Kool Aid")
heavens_gate = Cult.new("Heavens Gate", "San Diego", 1991, "Aliens")
mullencamp = Cult.new("Mullencamp", "New Orleans", 1960, "Black Magic")
xenomorph = Cult.new("Xenomorph", "New York", 1997, "Animals")
acolytes = Cult.new("Acolytes", "New York", 1960, "Mutants")

xenomorph.recruit_follower("1968-06-13",biff)
scientology.recruit_follower("1960-03-13",tania)
xenomorph.recruit_follower("1968-06-23",ralph)
heavens_gate.recruit_follower("1988-06-03",kippa)
acolytes.recruit_follower("1974-09-18",tania)
scientology.recruit_follower("1999-06-23",scott)
mullencamp.recruit_follower("1994-10-27",kippa)
acolytes.recruit_follower("1967-11-25",ralph)
mullencamp.recruit_follower("1949-12-30",will)
scientology.recruit_follower("1990-01-14",kienan)
acolytes.recruit_follower("2002-06-02",laura)
heavens_gate.recruit_follower("2012-02-11",kienan)
manson_fam.recruit_follower("2003-04-10",darnell)
manson_fam.recruit_follower("2000-05-13",ralph)
mullencamp.recruit_follower("2014-06-06",scott)
manson_fam.recruit_follower("2001-09-23",jeff)
acolytes.recruit_follower("2018-04-31",darnell)

Cult.find_by_name("Manson Fam")
# mullencamp.average_age
ralph.my_cult_slogans
scientology.my_followers_motto
Cult.most_common_location
# Follower.top_ten
BloodOath.first_oath

binding.pry

puts "All hail the DARK LORD!!!!!!!" # just in case pry is buggy and exits
