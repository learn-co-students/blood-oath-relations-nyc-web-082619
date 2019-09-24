class BloodOath

    attr_reader :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult, follower, initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date

        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        oath_sort = self.all.sort_by do |oath|
          Time.parse(oath.initiation_date)
        end
        oath_sort[0].follower
      end
end