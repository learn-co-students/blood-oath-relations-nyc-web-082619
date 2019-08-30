class Oath
    attr_reader :date, :follower, :cult
    @@all = []

    def initialize(date, follower, cult)
        @date = date
        @follower = follower
        @cult = cult
        self.class.all << self
    end

    def self.all
        @@all
    end
    
end