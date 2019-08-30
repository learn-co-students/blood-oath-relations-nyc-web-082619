require 'pry'

class Cult

    attr_reader :name, :city, :founding_year, :slogan

    @@all = []

    def initialize(name, city, founding_year, slogan)
        @name = name
        @city = city
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower_instance)
        BloodOath.new(self, follower_instance)
    end

    def cult_population
        cult_arr = BloodOath.all.select do |oath|
            oath.cult == self 
        end
        cult_arr.length
    end

    def self.all
        @@all
    end


end