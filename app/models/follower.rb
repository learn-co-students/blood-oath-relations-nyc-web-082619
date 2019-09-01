class Follower

attr_reader :name, :age, :life_motto, :cult, :blood_oat

@@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age 
        @life_motto = life_motto
        @cult = cult
        @blood_oat = @blood_oat
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def join_cult(cult)
        BloodOath.new(self, cult)
    end

    def self.of_a_certain_age(age_num)
        self.all.select {|follower| age_num <= follower.age }
    end


end 