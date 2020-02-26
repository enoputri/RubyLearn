#1 bilangan prima 1-100

# arr = []
#     1.upto(100){ |i|
#         a = 0
#         1.upto(i){ |x|
#     hasil = i % x 
#         if hasil == 0
#         a += 1
#         end
#     }
#     if a == 2 
#     arr << i
#     end
# }
# print arr

#1
lemari = ["Buku", "Handphone", "Pensil", "Baju", "Flashdrive"]
tas = []
tas = lemari.select do |t| t == "Buku" || t == "Pensil" || t == "Flashdrive"
    end
lemari.delete_if do |t| t == "Buku" || t == "Pensil"|| t == "Flashdrive"
end
print lemari
puts
print tas
puts 






#2
array1 = [1,2,3,4,5,6,7,8,9]
array2 = [1,7,6,0]
jumlahrotasi = 3
array1.pop(jumlahrotasi)
array1.unshift(7,8,9)
array2.delete_at(0)
array2.push(1)
print array1
puts
print array2




# #3
buah = {apel: 5000, nanas: 10000, semangka:20000, jeruk: 4000, anggur: 6000}
apel = buah[:apel]
semangka = buah[:semangka]
harga1 = apel * 4
harga2 = semangka * 2
harga3 = harga1 + harga2
if harga3 > 50000
    diskon = harga3 * 10/100
    total = harga3 - diskon
else
    total
end
print total

