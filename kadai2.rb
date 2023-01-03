class Monan
   def initialize(name, gia)
     @name=name
     @giaca=gia

   end
  def display_details()
      puts "#@name  #@giaca" "vnd"
  end
end
menu = []
menu1=Monan.new("Phở",30000)
menu << menu1# đưa các món ăn vào mảng
menu2=Monan.new("Bún chả",40000)
menu << menu2# đưa các món ăn vào mảng
menu3=Monan.new("Bánh mì",20000)
menu << menu3# đưa các món ăn vào mảng
menu.each {|doan| 
  doan.display_details()}