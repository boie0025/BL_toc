class Chapter
  # Set up instance variable(s)
  attr_accessor :name, :number
  
  # Initialize the object.  Sets the instance variable "@name" from the local variable sent to the method "name"
  def initialize(name)
    @name = name 
  end
end