require 'pry'
class Person
  # your code here
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

bob_attributes = { name: "Bob", hair_color: "Brown" }
bob = Person.new(bob_attributes)
susan_attributes = { name: "Susan", height: "5'11\"", eye_color: "Green" }
susan = Person.new(susan_attributes)
binding.pry