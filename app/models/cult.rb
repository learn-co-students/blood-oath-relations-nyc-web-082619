require 'pry'
class Cult

    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end
    

    #helper_______________________________________________________________________
    def my_cult_objects
        BloodOath.all.select{ |oath| oath.cult == self}
    end

    #class methods________________________________________________________________

    def self.all
        @@all
    end

    def self.find_by_name(cult_name)
        self.all.find{ |cult| cult.name == cult_name}
    end

    def self.find_by_location(location_string)
        self.all.select{ |cult| cult.location == location_string }
    end
    
    def self.find_by_founding_year(founding_year_integer)
        self.all.select{ |cult| cult.founding_year == founding_year_integer}
    end

    def self.least_popular
        self.all.sort{ |a, b| a.cult_population <=> b.cult_population}.first
    end

    def self.most_common_location
        cult = self.all.map{ |cult| cult.location}
        hash_loc_key_quantity_value = cult.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
        highest_loc_array = hash_loc_key_quantity_value.sort_by{ |k, v| v}.last
        highest_loc_array[0]
    end


    #instance methods___________________________________________________________________

    def cult_population
        BloodOath.all.select{ |oath| oath.cult == self }.size
     end

    def recruit_follower(initiation_date, follower_inst)
        BloodOath.new(initiation_date ,follower_inst, self)
    end
    
    def average_age
        age_sum = my_cult_objects.map{ |oath| oath.follower.age}.sum
        member_amount = self.cult_population
        age_sum / member_amount
    end

    
    def my_followers_mottos
        my_cult_objects.map{ |oath| p "#{oath.follower.life_motto}"}
    end
    
end #class end