a = [1,2,3]
 puts a[0]
 puts a[100]

puts a[4] = 50
puts a

14.divmod(3)
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

nm = [1,2,3,4]
sum = 0
nm.each do |n|
   sum += n
end
puts sum

nm = [1,2,3,4]
sum = 0
nm.each{|n| sum += n}
puts sum


# a = [1,2,3,1,2,3]
# a.delete_if do |n|
#   n.odd?
# end

# puts a

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