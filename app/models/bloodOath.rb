class BloodOath
    
    attr_accessor :initiation_date, :follower, :cult
    @@all = []

    def initialize(initiation_date="2019-30-08", follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult
        @@all << self
    end

    def initiation_date
        @initiation_date
        # self.initiation_date.to_s 
    end 

    def self.all
        @@all 
    end


end