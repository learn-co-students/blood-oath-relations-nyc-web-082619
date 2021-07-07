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
    
    def self.all_dates
        self.all.map{|oath|oath.date}
    end
    
    def self.find_follower_by_date(date)
        follower_oath = self.all.find{|oath|oath.date == date}
        follower_oath.follower
    end

    def self.first_oath
        find_follower_by_date(self.all_dates.sort.first)
    end

end