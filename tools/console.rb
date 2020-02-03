require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

sonata = Person.new("Sonata")
lauren = Person.new("Lauren")
yo = Person.new("Yo")

cosmo = Magazine.new("Cosmo", 5)
essence = Magazine.new("Essence", 3)
people = Magazine.new("People", 4)

sub1 = Subscription(sonata, cosmo, Time.now)
sub2 = Subscription(lauren, people, Time.new(2018, 1, 1))
sub3 = Subscription(yo, people, Time.new(2019, 11, 12))
sub4 = Subscription(sonata, essence, Time.new(2017, 10, 8))

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
