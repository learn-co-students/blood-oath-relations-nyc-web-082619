require 'pry'
class Cult
    attr_accessor :name, :location, :founding_year, :slogan, :cult_population
    
    def initialize(name, location, founding_year, slogan, cult_population)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @cult_population = cult_population
    end

    def recruit_follower(follower)
        BloodOath.new(follower, self) 
    end

    def self.all 
        BloodOath.all.select { |bloodOath| bloodOath.cult == self }
    end

    def self.find_by_name(name)
        BloodOath.all.find { |bloodOath| bloodOath.cult.name == name}
        # Cult.all.each { |name| name.name = self.name}
    end

    def self.find_by_location(location)
        BloodOath.all.find { |bloodOath| bloodOath.cult.location == location }
    end

    def self.find_by_founding_year(year)
        BloodOath.all.select { |bloodOath| bloodOath.cult.founding_year == year}
    end


end
