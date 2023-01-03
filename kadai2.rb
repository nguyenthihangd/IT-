class Monan
   def initialize(name, gia)
     @name=name
     @giaca=gia

   end
  def display_details()
      puts " #@name #@giaca""vnd"
  end
end

menu = []
menu1=Monan.new("Phở",20000)
menu << menu1# đưa các món ăn vào mảng
menu2=Monan.new("Cháo",15000)
menu << menu2# đưa các món ăn vào mảng
menu3=Monan.new("Cơm",10000)
menu << menu3# đưa các món ăn vào mảng
menu.each{|doan| 
  doan.display_details()}