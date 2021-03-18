class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name,price)
    # @name = name
    # @price = price
    @running_time = running_time
  end
end

dvd = DVD.new('A grate movi', 1000, 120)
puts dvd.name
puts dvd.price
puts dvd.running_time

class Parent
  def initialize
    @first = 1
    @second = 2
    @third = 3
  end

  def number
    "#{@first}.#{@second}.#{@third}"
  end
end

class Child < Parent
  def initialize
    super
    @hour = 6
    @minute = 30
    @second = 59
    # スーパークラスと同じ名前のインスタンスにしてしまった
  end

  def time
    "#{@hour}.#{@minute}.#{@second}"
  end
end

parent = Parent.new
puts parent.number

child = Child.new
puts child.time