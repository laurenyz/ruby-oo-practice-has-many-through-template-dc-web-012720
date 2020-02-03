class Magazine
    attr_reader :mag_name
    attr_accessor :price
    @@all = []

    def initialize(mag_name, price)
        @mag_name = mag_name
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    def subscriptions
        Subscription.all.select do |sub_obj|
            sub_obj.magazine == self
        end   
    end

    def subscribers
        self.subscriptions.map do |sub_obj|
            sub_obj.person
        end
    end

    def subscriber_names
        self.subscribers.map do |person_obj|
            person_obj.name
        end
    end

  



  
end
