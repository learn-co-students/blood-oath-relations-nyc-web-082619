class Follower
    attr_reader :name, :age
    attr_accessor :life_moto

    @@all = []

    def initialize(name, age, life_moto)
        @name = name
        @age = age
        @life_moto = life_moto

        @@all << self
    end

    def bloodoaths
        BloodOath.all.select{|bo|bo.follower == self}
    end

    def cults
        bloodoaths.map{|bo|bo.cult}
    end

    def self.all
        @@all
    end

    def join_cult(cult, initiation_date)
        Follower.new(cult, self, initiation_date)
    end

    def self.of_a_certain_age(age)
        self.all.select do|cult|
            cult.age == age
        end

    end


end