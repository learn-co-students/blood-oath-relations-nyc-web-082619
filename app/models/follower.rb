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
    
    def my_cults_slogans
      self.cults.each { |cult| puts cult.slogan }
      nil 
    end

    def fellow_cult_members
      all_fellow_cult_members = []
      BloodOath.all.each do |bloodoath| 
        if cults.include?(bloodoath.cult)
          all_fellow_cult_members << bloodoath.follower
        end
      end
      all_fellow_cult_members
      
    end
    
    def self.follower_popularity 
      follower_with_popularity = {}
      
      BloodOath.all.each do |bloodOath| 
        if follower_with_popularity[bloodOath.follower]
          follower_with_popularity[bloodOath.follower] += 1 
        else 
          follower_with_popularity[bloodOath.follower] = 1 
        end
      end
      follower_with_popularity
    end
    
    def self.sort_follower_popularity
      follower_popularity.sort_by { |k,v| -v }
    end
    
    def self.top_ten
      top_ten_follower = []
      i = 0
      10.times do
        top_ten_follower << sort_follower_popularity[i]
        i += 1 
      end
      top_ten_follower
    end
    
    def self.most_active
      bloodOath_with_most_follower = BloodOath.all.max_by { |bloodOath| bloodOath.follower.cults.count }
      bloodOath_with_most_follower.follower
    end

    def self.all
        BloodOath.all.map { |bloodoath| bloodoath.follower}
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age >= age }
    end
end
