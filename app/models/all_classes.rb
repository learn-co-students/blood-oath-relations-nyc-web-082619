class Follower

attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select do |follower|
      follower.age > age
    end
  end

  def self.follower_activity_sort
     follower_activity = self.all.map do |follower|
       {follower => follower.cults.length}
     end
     sorted_follower_activity = follower_activity.sort_by do |follower|
       follower.values[0]
     end
     sorted_follower_activity.reverse
  end

  def self.most_active
    self.follower_activity_sort[0]
  end

  def self.top_ten
    follower_activity_sort[0...9]
  end

  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.follower == self
    end
  end

  def cults
    blood_oaths.map do |blood_oath|
      blood_oath.cult
    end
  end

  def join_cult(cult)
    if self.age >= cult.minimum_age
      BloodOath.new(self, cult)
    else
      puts "Sorry, you are not yet old enough to join the cult of #{cult.name}"
    end
  end

  def my_cults_slogans
    cults.map do |cult|
      cult.slogan
    end
  end

  def fellow_cult_members
    Follower.all.select do |follower|
      follower.cults & self.cults != [] && follower != self
    end
  end

end

class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
  
    @@all = []
  
    def initialize(name, location, founding_year, slogan, minimum_age)
      @name = name
      @location = location
      @founding_year = founding_year
      @slogan = slogan
      @minimum_age = minimum_age
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      self.all.find do |cult|
        cult.name == name
      end
    end
  
    def self.find_by_location(location)
      self.all.select do |cult|
        cult.location == location
      end
    end
  
    def self.find_by_founding_year(year)
      self.all.select do |cult|
        cult.founding_year == year
      end
    end
  
    def self.least_popular
      self.all.min_by do |cult|
        cult.followers.length
      end
    end
  
    def self.cult_locations
      locations = {}
      self.all.each do |cult|
        if !locations[cult.location]
          locations[cult.location] = 1
        else
          locations[cult.location] += 1
        end
      end
      return locations
    end
  
    def self.most_common_location
      location = cult_locations.max_by do |location, count|
        count
      end
      location[0]
    end
  
    def blood_oaths
      BloodOath.all.select do |bloodoath|
        bloodoath.cult == self
      end
    end
  
    def followers
      blood_oaths.map do |bloodoath|
        bloodoath.follower
      end
    end
  
    def cult_population
      followers.length
    end
  
    def recruit_follower(follower)
      if follower.age >= self.minimum_age
        BloodOath.new(follower, self)
      else
        puts "Sorry, #{follower.name} is not yet old enough to join this cult."
      end
    end
  
    def average_age
      total_age = followers.reduce(0) do | sum, follower |
       sum + follower.age
     end
     total_age / followers.length
    end
  
    def my_followers_mottos
      followers.map do |follower|
        follower.life_motto
      end
    end
  
  
  end

  class BloodOath

    attr_accessor :follower, :cult, :initiation_date
  
  
    @@all = []
  
    def initialize(follower, cult)
      @follower = follower
      @cult = cult
      @initiation_date = "#{Time.now.year}-#{Time.now.month}-#{Time.now.day}"
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
  
def my_movies
    Role.all.select{|role|role.movie==self}
end

def cast
    my_movies.map{|role|role.actor}
end


def credits
    credits = {}
    my_movies.each do |role|
        credits.[role.movie.title] = role.actor.full_name
    end
    credits
end

def self.all
@@all
end

def self.find_by_year(year)
Movie.all.select{|movie|movie.year}
end


end
