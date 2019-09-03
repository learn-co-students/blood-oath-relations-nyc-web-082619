require 'pry'
class Cult
    attr_accessor :name, :location, :founding_year, :slogan
    
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self) 
    end

    def self.all 
        BloodOath.all.map { |bloodOath| bloodOath.cult }
    end
    
    def cult_population
      bloodOathThisCult = BloodOath.all.select { |bloodOath| bloodOath.cult == self } 
      cultFollowers = bloodOathThisCult.map { |bloodOath| bloodOath.follower }
      cultFollowers.count
    end

    def self.find_by_name(name)
        BloodOath.all.find { |bloodOath| bloodOath.cult.name == name}
        # Cult.all.each { |name| name.name = self.name}
    end

    def self.find_by_location(location)
        bloodOathLocation = BloodOath.all.select { |bloodOath| bloodOath.cult.location == location }
        bloodOathLocation.map { |bloodOath| bloodOath.cult }
    end

    def self.find_by_founding_year(year)
        bloodOathYear = BloodOath.all.select { |bloodOath| bloodOath.cult.founding_year == year}
        bloodOathYear.map { |bloodOath| bloodOath.cult }
    end
    
    def allMyBloodOath
      BloodOath.all.select { |bloodOath| bloodOath.cult == self }
    end
    
    def average_age
      allFollower = self.allMyBloodOath.map { |bloodOath| bloodOath.follower }
      numOfFollower = allFollower.count
      allAge = allFollower.map { |follower| follower.age } 
      totalAge = allAge.sum 
      aveAge = totalAge.to_f / numOfFollower.to_f 
    end


end
