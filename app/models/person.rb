class Person
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def subscriptions
        Subscription.all.select do |sub_obj|
            sub_obj.person == self
        end   
    end
    # If you leave as the object you can use this method as a helper method.
    def magazines
        self.subscriptions.map do |sub_obj|
            sub_obj.magazine
        end
    end
    def magazine_name
        self.magazines.map do |mag_obj|
            mag_obj.mag_name 
        end
    end
    def total_cost
        self.magazines.sum do |mag_obj|
            mag_obj.price
        end
    end
end
