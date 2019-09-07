class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age= age
        @life_motto = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

def cults
    BloodOath.all.select do |oath|
        oath.follower == self
    end
end

def join_cult(initiation_date, cult_instance)
    BloodOath.new(initiation_date, cult_instance, self)
end

def self.life_motto
    self.all.select{ |name| name.life_motto == self }
end

def self.of_a_certain_age(that_age)
    self.all.select{ |follower| follower.age >= that_age }
end

def my_cult_slogans
        my_oaths = BloodOath.all.select{ |oath| oath.follower == self }
        my_oaths.map{ |oath| oath.cult.slogan }
    end

    def self.most_active
       self.all.max_by{ |oath| oath.cults.length }
    end

    def self.top_ten
       cultty = self.all.sort_by { |oath| oath.cults.length }  
       cultty.take(10).reverse  
    end
end