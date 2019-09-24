class Cult

    attr_reader :name
    attr_accessor :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(follower, initiation_date)
        Follower.new(self,follower, initiation_date)
    end

    

    def self.find_by_name(name)
        self.all.select do|cult|
           cult.name == name
        #binding.pry
        end
    end

    def bloodoaths
        BloodOath.all.select{|bo|bo.cult == self}
    end

    def my_followers
        bloodoaths.map{|bo|bo.follower}
    end

    def cult_population
        my_followers.length
    end

    def average_age
       all_ages = my_followers.map{|follower|follower.age}
       all_ages.sum/all_ages.length.to_f
    end

    def my_followers_mottos
        my_followers.map{|follower|follower.life_moto}
    end

    def self.least_popular
     self.all.min_by{|cult|cult.my_followers.length}
     end

    def self.find_by_location(location)
        self.all.select do|cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do|cult|
            cult.founding_year == year
        end
    end

    def self.all
        @@all
    end

end