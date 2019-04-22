# Rewrite the two hashes to use a class instead. Also write the methods to retrieve the name and the color, and another method to redefine the color.:

boat1 = { "name" => "S. S. Minnow", "color" => "white", "price" => 20000 }
boat2 = { "name" => "Titanic", "color" => "black", "price" => 700000000 }

class Boat
  # your code goes here!
  def initialize (name, color, price)
    @name = name
    @color = color
    @price = price
  end
  def name
    @name
  end
  def color
    @color
  end
  def price
    @price
  end
  def name=
    @name
  end
  def color=(color)
    @color = color
  end
end

boat1 = Boat.new("S. S. Minnow", "white", 20000 )
boat2 = Boat.new("Titanic", "black", 700000000)

p boat1
p boat2

p boat1.name
boat2.color = "red"
p boat2.color