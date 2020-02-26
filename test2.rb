#hari.upcase!
#hari.reverse!
#puts "#{hari}"
#puts "{hari}"

#inputan = gets.chomp
#puts "hari ini adalah hari #{hari}"
#puts "hari ini adalah hari #{inputan}".gsub('hari',inputan)

#def fungsi (item)
  #  4.downto(0) do |x|
  #  puts item[x]
   # end
#end
   # array1 = ['siapa','rumah', 'lokasi', 'disana', 'daerah']
   # fungsi (array1) 

   #def set(a, b, c, d)
   # puts b
   # puts d 
   # puts c 
   # puts a 
  # end
  # arr = ['Hutan', 'gunung', 'pantai', 'jalanan']
  # set(*arr)

  arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
  puts arr[14]
  puts arr[4] = 'a,b,c,d'
  puts arr[0] = '0,5'
  puts  "#{arr}"


  puts '================'
  arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
  puts arr[14]
  puts arr[4] = 'a,b,c,d'
  puts arr[0] = '1,5'

  arr.delete_at(9)
  arr[11] = 'd'
  arr[12] = 'd'
  arr[13] = 'd'
  arr[14] = 'd'

  puts  "#{arr}"
  puts  "#{arr.to_s.gsub('1','')}"

  puts '================'

  arr = []
  4.upto(9) do |x|
    arr.push(x)
  end

  arr.delete_if do |item|
    item > 7
  end
  puts arr.join('x')

  
