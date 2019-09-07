class BloodOath

    attr_accessor :cult, :follower
    attr_reader :initiation_date

    @@all = []

    def initialize(initiation_date, cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.first_oath
        self.all.sort_by { |oath| oath.initiation_date }.first
    end
end