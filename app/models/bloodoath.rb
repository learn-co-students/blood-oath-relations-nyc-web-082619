class BloodOath

attr_reader :initiation_date
attr_accessor :cults, :followers

@@all = []

    def initialize(initiation_date)
        @initiation_date = initiation_date
        @cults = cults
        @followers = followers
        @@all << self
    end 

    def self.all
        @@all
    end 


end 