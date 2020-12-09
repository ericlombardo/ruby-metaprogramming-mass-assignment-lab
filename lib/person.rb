require 'pry'

class Person  # creates a person
  def initialize(attributes)  # receives any number of arguments in hash format
    attributes.each do |key, value|   # loops through each key/ value pair
      self.class.attr_accessor(key)   # creates an attr_accessor so it has set and get methods
      self.send(("#{key}="), value)   # creates set method and assigns value for each key/value
    end
  end
end