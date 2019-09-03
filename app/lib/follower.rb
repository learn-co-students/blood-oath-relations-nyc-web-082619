class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        self.class.all << self
    end

    def self.all
        @@all
    end

    def oaths
        Oath.all.select{|oath|oath.follower == self}
    end

    def cults
        multiple_arr = oaths.map{|oath|oath.cult}
        multiple_arr.flatten
    end

    def join_cult(cult, year=2019)
        Oath.new(year.to_s, self, cult)
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age.to_i >= age}
    end

end

