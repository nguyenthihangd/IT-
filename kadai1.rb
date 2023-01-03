class Menu
  attr_accessor :name
  attr_accessor :price
  attr_accessor :count
  attr_accessor :sum
  # get_total_priceメソッドを定義してください

  def get_total_price()
    puts"Nhap vao so luong mon"
    count = gets.to_i
    sum= count*price
    if(count >= 3)
      sum = sum -10000
    end
    return "#{self.name} #{sum}vnd"
    # return "#{self.name} #{total_price}vnd"
  end
end
  menu1 = Menu.new
  menu1.name = 'Phở'
  menu1.price = 30_000
  puts menu1.get_total_price
# menu1に対してget_total_priceメソッドを呼び出してください
