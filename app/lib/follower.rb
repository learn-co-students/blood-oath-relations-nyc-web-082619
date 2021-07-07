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
        if self.age > cult.minimum_age
            Oath.new(year.to_s, self, cult)
        else 
            print "Sorry, but you are too young to join #{self.name}."
        end
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age.to_i >= age}
    end

    def fellow_cult_members
        cults.map{|cult|cult.followers.reject{|follower| follower == self}}
    end

    def my_cults_slogans
        print self.cults.map{|cult|cult.slogan}
    end
    
    def self.most_active
        self.all.max_by{|follower| follower.cults.length}
    end

    def self.top_ten
        self.all.sort_by{|follower| follower.cults.length}.reverse.take(10)
    end

    def fellow_cult_members
        fellow_members = self.cults.map{|cult|cult.followers}.uniq.flatten
        fellow_members.delete(self)
        fellow_members
    end
end

