
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

text = <<TEXT 
I love Ruby. Pyson is a great language. Java and JavaScript are different. 
TEXT

puts text.scan(/[A-Z][A-Za-z]+/)

text = <<TEXT
私の郵便番号は123456です。
僕の住所は6770056　兵庫県西脇1234だよ
TEXT

puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
puts text.scan /\d\d-\d\d\d\d-\d\d\d\d/

text = <<-TEXT
名前：伊藤淳一
電話：03(1234)5678
？？：9999-99-9999
？？：03(1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
numbers = text.scan(/0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/)
puts numbers.grep(/\(\d+\)|-\d+-/)

text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT

puts text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

html = <<-HTML
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
HTML

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced

text = <<-TEXT
私の誕生日は1997年7月17日です。
TEXT
m = text.match /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
puts m[:year]
puts m[:month]
puts m[:day]

text = <<-TEXT
私の誕生日は1997年7月17日です。
TEXT

text =~ /(\d+)年(\d+)月(\d+)日/
puts Regexp.last_match(1)


class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    name = 'bob'
  end

  def rename_to_carol
    self.name = 'carol'
  end

  def rename_to_dave
    @name = 'dave'
  end

end


user = User.new('Alice')
user.rename_to_bob
puts user.name
user.rename_to_carol
puts user.name
user.rename_to_dave
puts user.name