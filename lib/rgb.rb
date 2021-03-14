def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,n|
    hex + n.to_s(16).rjust(2,'0')
  end
end

def to_ints(hex)
  # r = hex[1..2]
  # g = hex[3..4]
  # b = hex[5..6]
  # [r,g,b].map do |s|
  #  s.hex
  #  end

  # どちらもエラーなし

  hex.scan(/\w\w/).map(&:hex)

end

fruits = ['apple', 'orange', 'melon']
fruits.each_with_index {|fruits,i| puts "#{i}: #{fruits}" }

dimensions = [
  [10,20],
  [30,40],
  [50,60]
]
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

sum = 0
5.times { |n| sum += n }
puts sum

a = []
a << 1 while a.size < 5
puts a


fruits = ['apple', 'orange', 'melon']
numbers = [1,2,3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end

numbers = [1,2,3,4,5]
numbers.each do |n|
  next if n.even?
  puts n
end

foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？　＝＞"
  answer = 'いいえ'
  puts answer
  count += 1
  redo if answer != 'はい' && count < 2
  count = 0
end