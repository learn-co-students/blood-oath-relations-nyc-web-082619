require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jeff = Follower.new("Jeff", 19, "Drink beer and have fun")
laura = Follower.new("Laura", 27, "Live free!")
scott = Follower.new("Scott", 32, "Come at me bro")
darnell = Follower.new("Darnell", 34, "I'm big D")
kienan = Follower.new("Kienan", 31, "I love girls")
will = Follower.new("Will", 33, "I want to smoke")

scientology = Cult.new("Scientology", "Los Angeles", 1966-06-02, "Dianetics")
manson_fam = Cult.new("Manson Fam", "San Francisco", 1975-11-12, "Kool Aid")
heavens_gate = Cult.new("Heavens Gate", "San Diego", 1991-12-31, "Aliens")
mullencamp = Cult.new("Mullencamp", "New Orleans", 1945-12-25, "Black Magic")
xenomorph = Cult.new("Xenomorph", "Ontario", 1997-10-31, "Animals")
acolytes = Cult.new("Acolytes", "New York", 1960-05-02, "Mutants")

mullencamp.recruit_follower(will)
scientology.recruit_follower(kienan)
acolytes.recruit_follower(laura)
heavens_gate.recruit_follower(kienan)
manson_fam.recruit_follower(darnell)
manson_fam.recruit_follower(scott)


binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
