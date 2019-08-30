class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        down_name = name.downcase
        @name = down_name.capitalize
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    # def oaths
    #     oath_array =[]
    #     array = Oath.all
    #     array.each do |oath|
    #         if oath.cult == self
    #             oath_array << oath
    #         end
    #     end
        # return oath_array
    # end

    def oaths
        Oath.all.select{|oath| oath.cult == self}
    end

    def followers
        self.oaths.map {|oath| oath.follower } 
    end
   
    
    def recruit_follower(follower, year=2019)
        oath = Oath.new(year, follower, self)
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

end
