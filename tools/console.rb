require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Cult :name, :location, :founding_year, :slogan

peoples_temple = Cult.new("Peoples Temple", "Tulsa", 1856, "cults r great")
children_of_god = Cult.new("Children of God", "Tulsa", 1995, "cults r great")
manson_family = Cult.new("Manson Family", "san francisco", 1966, "cults r great")
heavens_gate = Cult.new("Heaven's Gate", "Boston", 2015, "cults r great")
scientology = Cult.new("Scientology", "Las Vegas", 1999, "cults r great")
him = Cult.new("him", "Los Angelas", 1992, "cults great")
xxx = Cult.new("XXX", "Las Vegas", 1939, "cults r great")

# Follower :name, :age, :life_motto, 

tom_cruise = Follower.new("Tom Cruise", 45, "Who called me crazy")
greg = Follower.new("Greg", 24, "I know where Tupac is!")
tex_watson = Follower.new("Tex Watson", 16, "The government is lying to you")
lucie = Follower.new("Lucie", 32, "The truth is out there")
taylor = Follower.new("Taylor", 19, "Wheres the Kool-aid at?")
john_travolta = Follower.new("John Travolta", 65, "Watch me crash this plane")
hannah = Follower.new("Hannah", 15, "Tell me what to do!")

manson_family.recruit_follower( "1968-05-02",tex_watson)
peoples_temple.recruit_follower("1968-05-07",greg)
manson_family.recruit_follower("1993-06-15",greg)
heavens_gate.recruit_follower("2003-03-14",lucie)
heavens_gate.recruit_follower("1968-07-11",tex_watson)
scientology.recruit_follower("1969-12-22",tex_watson)
scientology.recruit_follower("1988-01-01",john_travolta)
scientology.recruit_follower("1993-11-26",tom_cruise)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
