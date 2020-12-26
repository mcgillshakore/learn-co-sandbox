# class Song
#   attr_accessor :name
#   @@all = []
 
#   def initialize(name)
#     @name = name
#   end
 
#   def self.all
#     @@all
#   end
 
# end

# class Person
#   attr_accessor :name
#   @@all = []
 
#   def initialize(name)
#     @name = name
#     @@all << self
#   end
 
#   def self.all
#     @@all
#   end
  
#   def self.find_by_name(name)
#     @@all.find{|person| person.name == name}
#   end
# end
# Person.new("Grace Hopper")
# Person.new("Sandi Metz")
# Person.new("Avi Flombaum")

# sandi_metz = Person.find_by_name("Sandi Metz")
# grace_hopper = Person.find_by_name("Grace Hopper")
# avi_flombaum = Person.find_by_name("Avi Flombaum")

# puts sandi_metz

# class Person
#   attr_accessor :name
#   @@people = []
 
#   def initialize(name)
#     @name = name
#     # self in the initialize method is our new instance
#     # self.class is Person
#     # self.class.all == Person.all
#     self.class.all << self
#   end
 
#   def self.all
#     @@people
#   end
 
#   def self.find_by_name(name)
#     self.all.find{|person| person.name == name}
#   end
 
# end

# Person.new("Hack String")

class Person
  attr_accessor :name, :age, :company
end
 
csv_data = "Elon Musk, 45, Tesla
Mark Zuckerberg, 32, Facebook
Martha Stewart, 74, MSL"
 
rows = csv_data.split("\n")
people = rows.collect do |row|
  data = row.split(", ")
  name = data[0]
  age = data[1]
  company = data[2]
  person = Person.new
  person.name = name
  person.age = age
  person.company = company
  person
end
people
