def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts,&block)
end

def greeting_en(&block)
  text = ['good morning', 'hello', 'good evening']
  greeting_common(texts,&block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

hello_proc = Proc.new do
  'Hello'
end

hello_proc = Proc.new{ 'Hello'}
puts hello_proc.call

add_proc = Proc.new{ |a, b| a + b }
puts add_proc.call(10,20)

def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

shuffle_proc = Proc.new{ |text| text.chars.shuffle.join }
repeat_proc = Proc.new{ |text| text * 2 }
question_proc = Proc.new{ |text| "#{text}?" }

greeting(repeat_proc, shuffle_proc, question_proc)