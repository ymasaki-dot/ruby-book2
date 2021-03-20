def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue
    puts "例外が発生しました"
  end
  puts 'mehod_1 end.'
end

def method_2
  puts 'method_2 start'
  method_3
  puts 'method_3 start'
end

def method_3
  puts 'method_3 start'
  1 / 0
  puts 'method_3 end'
end

method_1

begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース"
  puts e.backtrace
  puts "------"
end

begin
  1 / 0
rescue ZeroDivisionError
  puts "0で徐算しました"
end

begin
  1 / 0
rescue NoMethodError
  puts "nomethoderror desu"
rescue NameError
  puts "nameerrorです"
rescue
  puts "other"
end

# retry_count = 0
# begin
#   puts '処理を開始します'
#   1 / 0
# rescue
#   retry_count += 1
#   if retry_count <= 3
#     puts "retryします"
#     retry
#   else
#     puts "retryに失敗しました"
#   end
# end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'doller'
  when :india
    'rupee'
  else
    raise "無効な国名です。#{country}"
  end
end
puts currency_of(:japan)
puts currency_of(:itsly)