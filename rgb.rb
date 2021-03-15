numbers = [1,2,3,4]
new_numbers = []
numbers.each{|n| new_numbers << n * 10}
puts new_numbers

numbers = [1,2,3,4]
new_numbers = numbers.map{|n|  n * 10}
puts new_numbers

numbers = [1,2,3,4]
new_numbers = numbers.select {|n| n.even? }
puts new_numbers


def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13..18
    600
  else 
    1000
  end
end

puts charge(1)
puts charge(13)


h = Hash.new {|hash,key| hash[key] = 'hello'}
h[:foo]
h[:bar]

puts h

def find_currency(country)
  currencies = {japan: 'yen', us: 'dollar', india: 'ruppe'}
  currencies[country]
end

def show_currency(country)
  currency = find_currency(country)
  if currency
    currency.upcase
  end
end
puts show_currency(:japan)
puts show_currency(:brazil)

limit = nil
limit ||= 10

puts limit