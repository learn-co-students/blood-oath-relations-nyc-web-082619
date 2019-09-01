class Cult

    attr_reader :name, :location, :founding_year, :slogn, :follower, :blood_oat

    @@all = []

    def initialize(name,location, founding_year, slogn)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogn = slogn
        @follower = follower
        @blood_oath = blood_oat
        @@all << self
    end 

    def self.all
        @@all
    end 

    def recruit_follower(follower)
        BloodOath.new(follower)
    end 

    def cult_population
        #returns the number of followers in this cult
        BloodOath.all.map {|blood_oat| blood_oat.follower}
    end 

    def self.find_by_name(name)
        self.all.find {|cult| name == cult.name}
    end

    def self.find_by_location(location)
        self.all.select {|cult| location == cult.location}
    end 

    def self.find_by_founding_year(year_num)
        self.all.find {|cult| year_num == cult.founding_year}
    end

end