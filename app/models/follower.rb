class Follower
    attr_accessor :name, :age, :life_motto
    
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
    end

    def cults
        followers = BloodOath.all.select { |bloodoath| bloodoath.follower == self } #followers has all the BloodOath by this follower
        followers.map { |bloodoath| bloodoath.cult } #return all the cults by this follower
    end

    def join_cult(cult)
        BloodOath.new(self, cult)
    end

    def self.all
        BloodOath.all.map { |bloodoath| bloodoath.follower}
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age >= age }
    end
end
