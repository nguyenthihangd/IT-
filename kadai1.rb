class Menu
 attr_accessor :name
 attr_accessor :price
  # get_total_priceメソッドを定義してください
  def get_total_price(count)
    if count <= 0
      return "Invalid"
    elsif count < 3
      total_price = price * count
      return "#{self.name} #{total_price}vnd"
    else
        total_price = price * count - 10000
      return "#{self.name} #{total_price}vnd"
    end
 end
end

menu1 = Menu.new
menu1.name = "Phở"
menu1.price = 30000

# menu1に対してget_total_priceメソッドを呼び出してください

puts menu1.get_total_price(3)