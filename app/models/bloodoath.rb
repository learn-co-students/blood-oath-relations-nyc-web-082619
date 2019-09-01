class BloodOath

    attr_accessor :initiation_date, :follower, :cult

    @@all = []

    def initialize( initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        oaths = BloodOath.all.map{ |oath| oath.initiation_date.split("-")}
        oaths_int = oaths.map{ |array| array.map{ |num| num.to_i}}
        sort = oaths_int.sort_by{ |a,b,c| a || b ||c }
        sorted = sort.first.map{ |x| x.to_s}
        sorted_properly = sorted.map do  |x| 
            if x.length == 1
                "0" + x
            else
                x
            end
        end 
        answer = sorted_properly.inject{ |sum, x| sum + "-" + x}
        BloodOath.all.select{ |oath| oath.initiation_date == answer} 
    end
    #binding.pry


end #class end