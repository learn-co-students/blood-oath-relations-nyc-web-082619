class Cult
    attr_reader :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age)
        down_name = name.downcase
        @name = down_name.capitalize
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = 17
        @@all << self
    end

    def self.all
        @@all
    end

    def oaths
        Oath.all.select{|oath| oath.cult == self}
    end

    def followers
        self.oaths.map {|oath| oath.follower } 
    end
   
    
    def recruit_follower(follower, year=2019)
        if follower.age > @minimum_age
            Oath.new(year, follower, self)
        else 
            print "Sorry, but you are too young to join #{self.name}."
        end
    end
        
    def cult_population
        self.followers.length
    end

    def self.find_by_name(name)
        cap_name = name.capitalize
        self.all.find{|cult| cap_name == cult.name}
    end
    
    def self.find_by_location(place)
        cap_place = place.capitalize
        self.all.select {|cult| cap_place == cult.location}
    end

    def self.find_by_founding_year(year)
        num_year = year.to_s
        self.all.select {|cult| num_year == cult.founding_year}
    end

    
    def average_age
        ages = self.followers.map{|follower|follower.age.to_i}
        ages.reduce(:+)/ages.length.to_f
    end

    def my_followers_mottos
       print self.followers.map{|follower| follower.life_motto}
    end

    def self.least_popular
        self.all.min_by{|cult|cult.followers.length}
    end

    def self.find_cults_by_location(location)
        self.all.select{|cult|cult.location == location}
    end

    def self.all_location_arr
        self.all.map{|cult|cult.location}.uniq
    end

    def self.most_common_location
        self.all_location_arr.max_by do 
            |location|find_cults_by_location(location).length
        end
    end

end
