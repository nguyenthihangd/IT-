class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください

  def get_total_price(count)
    total_price = count * self.price

    dis = count / 3
      total_price = total_price - 10000 * dis

    return "#{self.name} #{total_price}vnd"
  end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

# menu1に対してget_total_priceメソッドを呼び出してください
loop do
  print "入力番号 > "
  count = gets.to_i
  if count > 0
    puts menu1.get_total_price(count)
    break
  end
    puts "無効な値"
end