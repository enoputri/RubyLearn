# Hash pertama -> string element
hash = {'satu' => 1, 'dua' => 2, 'tiga' => 'selamat'} #kalo stirng pake arrow gabisa titik dua
puts hash['tiga'] #harus string

# Hash Kedua -> symbol element
hash = {:satu => 'Katakan', :dua => 'Salah', :tiga => 'Benar'}# harus pake arrow
puts hash[:satu] #harus pakai :

# Hash Ketiga -> default element
asd = {satu: 'Hello', dua: 'World', tiga: 'Home'} #gaboleh string harus simbol
puts asd[:satu] #harus pakai :
puts '==========='

hash = {nama: 'Ernest', job: 'Programmer', company: 'Fandom'} 
puts hash[:salary]
puts hash.fetch(:nama) #pake fetch sementara
puts hash.fetch(:salary, 30000)
puts hash = Hash.new('belum ada nilai')
puts hash[:nilai]
hash[:nilai] = 100
hash[:salary] = 120
puts hash
puts '=========='

# menambah dan menghapus element dalam hash
new_hash = Hash.new
new_hash[:nama] = 'Ernest'
puts new_hash
new_hash['kelas'] = 'A-1'
puts new_hash

# delete()
new_hash.delete(:nama)
puts new_hash
new_hash[:nama] = 'ErnestLagi'
puts new_hash
puts '========'

# looping dalam hash
loop = {nama: 'Uni', kelas: 'A!', tipe: 'Normal'}

loop.each do |element, value|
    puts "#{element} ==> #{value}"
end
puts '==='
loop.each do |element|
    puts "#{element} item"
end
puts '==='
loop.each_key do |key|
    puts "ambil #{key}"
end
puts "#{loop.keys}"
puts "#{loop.values}"