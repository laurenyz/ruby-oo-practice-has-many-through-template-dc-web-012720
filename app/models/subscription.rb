class Subscription
    attr_reader :person, :magazine
    attr_accessor :start_date
    @@all = [] 

    def initialize(person_obj, magazine_obj, start_date)
        @person = person_obj
        @magazine = magazine_obj
        @start_date = start_date
        @@all << self
    end

    def self.all
        @@all
    end 

    

end
