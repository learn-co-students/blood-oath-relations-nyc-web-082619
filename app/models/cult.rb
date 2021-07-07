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
      if follower.age < minimum_age
        puts "Sorry! follwer age #{follower.age} is belowMinimum age (18)"
      else
        BloodOath.new(follower, self) 
      end

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

    def allMyFollowers
        self.allMyBloodOath.map { |bloodOath| bloodOath.follower }
    end

    def minimum_age
      18
    end
    
    def average_age
      allFollower = self.allMyFollowers
      numOfFollower = allFollower.count
      allAge = allFollower.map { |follower| follower.age } 
      totalAge = allAge.sum 
      aveAge = totalAge.to_f / numOfFollower.to_f 
    end
    

    def my_followers_mottos
        self.allMyFollowers.each { |follower| puts follower.life_motto}
    end

    def self.least_popular
        least_follower_bloodOath =  BloodOath.all.min_by { |blood| blood.cult.allMyFollowers.count }
        least_follower_bloodOath.cult
    end
    
    def self.popularity_of_location
      common_location = {}
      self.all.each do |cult| 
  
        if common_location[cult.location]
          common_location[cult.location] += 1 
        
        else 
          common_location[cult.location] = 1 
        end
      end
      common_location
    end
    
    def self.most_common_location
      popular_locaiton = self.popularity_of_location.max_by { |k,v| v }
      popular_locaiton[0]
    end


end # End of Cult class
