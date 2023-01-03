#bingo クラスを定義します
class Bingo
    attr_accessor :row
    attr_accessor :rows
    
    def initialize
         @row = []
         @rows = []
      #それぞれの列の価値を設定します
        (1..5).each do |i|
            @row = [rand(1..15),rand(16..30),rand(31..45), rand(46..60),rand(61..75)]
            if i == 3
            @row = [rand(1..15),rand(16..30),"", rand(46..60),rand(61..75)]
        end
            @rows.push(row)
        end
    end
    #bingo 表示
    def show
         printf("%3s |%3s |%3s |%3s |%3s\n",'B','I','N','G','O')
        rows.each do |row|
        printf("%3s |%3s |%3s |%3s |%3s\n",row[0],row[1],row[2],row[3],row[4])
    end
    end
    end
#bingo 設定 
bingo1 = Bingo.new
bingo1.show

