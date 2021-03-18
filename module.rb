
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product

  include Loggable

  def title
    log 'title is called.'
    'A gret movie'
  end
end

class User

  include Loggable

  def name
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
product.title

user = User.new
user.name

module Taggable
  def price_tag
    "#{price}円"
  end
end

class Product
  include Taggable
  def price
    1000
  end
end

product = Product.new
puts product.price_tag

class Tempo
  include Comparable

  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end
end

def insect
  "#{bpm}bpm"
end

puts t_120 = Tempo.new(120)

module Baseboll
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

Baseboll::Second.new('alice', 13)
Clock::Second.new(13)