class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    # helper methods______________________________________________________________

    def my_follower_objects
        BloodOath.all.select{ |oath| oath.follower == self}
    end

    # class methods_______________________________________________________________
    
    def self.all
        @@all
    end

    def self.of_a_certain_age(certain_age)
        self.all.select{ |follower| follower.age >= certain_age}
    end

    def self.most_active
        all_oaths = BloodOath.all.map{ |oath| oath.follower}
        hash_follower_key_quantity_value = all_oaths.inject(Hash.new(0)) { |h, v| h[v] += 1; h}
        sorted_hash = hash_follower_key_quantity_value.sort_by { |k,v| v}.last
        sorted_hash[0]
    end

    def self.top_ten
        all_oaths = BloodOath.all.map{ |oath| oath.follower}
        hash_follower_key_quantity_value = all_oaths.inject(Hash.new(0)) { |h, v| h[v] += 1; h}
        sorted_hash = hash_follower_key_quantity_value.sort_by { |k,v| v}
        sorted_hash.map{ |k,v| k}.reverse
    end

    #instance methods_____________________________________________________________

    def my_cults_slogans
        my_follower_objects.map{ |oath| p "#{oath.cult.slogan}"}
    end

    def cults
        BloodOath.all.select{ |oath| oath.follower == self}
    end

    def join_cult(initiation_date, cult_inst)
        if self.age >= cult_inst.minimum_age
            BloodOath.new(initiation_date, self, cult_inst)
        else
            "Call us in a couple of years!"
        end
    end
 
#bonus_______________________________________________________________________________________-
    def fellow_cult_members
        my_cults = self.my_follower_objects
        my_cults.map do |cult| 
            BloodOath.all.select do |oath| 
                oath.cult == cult.cult 
            end
        end
        
        #binding.pry
    
end


    

end #class end