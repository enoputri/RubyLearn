def bagi(a,b)
    hasil = a/b 
end
puts bagi(8,2)
puts bagi(8,0)

#
def bagi(a,b)
begin
    hasil = a/b 
rescue
    error =  true
end
    if error
    'Terjadi Error'
    else
    hasil
    end
end

puts bagi(8,2)
puts bagi(8,0)