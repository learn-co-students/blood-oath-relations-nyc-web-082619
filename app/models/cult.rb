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

    def recruit_follower(initiation_date, follower_instance)
        BloodOath.new(initiation_date, self, follower_instance)
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

    def self.find_by_name(name)
       their_name = self.all.select{|cult| cult.name == name} 
    end

    def self.find_by_location(cult_city)
        their_city = self.all.select{|cult| cult.city == cult_city }
    end

    def self.find_by_founding_year(year)
        birth_year = self.all.select{|cult| cult.founding_year == year}
    end

    def average_age
        b_o = BloodOath.all.select{|oath| oath.cult == self}
        my_followers = b_o.map{|my_oath| my_oath.follower}
        followers_ages = my_followers.map{|follower| follower.age.to_f}
        followers_ages.sum/followers_ages.length
    end

    def my_followers_motto
        my_oaths = BloodOath.all.select{|oath| oath.cult == self}
        my_oaths.map{ |oath| oath.follower.life_motto }
    end

    def self.least_popular
        self.all.min_by { |cult| cult.cult_population}
    end

    def self.most_common_location
       common_locales = self.all.max_by { |cult| cult.cult_population }.city
    #    common_locales.city # Also works
    end

end