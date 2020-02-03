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

  
end
