# OOP - class(normal function)
class Calculator
    def penjumlahan(a, b)
        a + b
    end

    def pengurangan(a, b)
        a - b
    end
end 

calc = Calculator.new #object - insert class to variable
hasil_penjumlahan = calc.penjumlahan(10,5)
puts hasil_penjumlahan

hasil_pengurangan = calc.pengurangan(10,5)
puts hasil_pengurangan

# OOP - constructor
class CalculatorKool
    def initialize(a, b)
        @parameter_a = a # @ adalah variable umum pada class
        @parameter_b = b
        @lokal = a + b
    end

    def penjumlahan
        @parameter_a + @parameter_b
    end

    def perkalian
        @parameter_a * @parameter_b
    end
end

calc = CalculatorKool.new(10, 5)
hasil_plus = calc.penjumlahan
puts hasil_plus
hasil_perkalian = calc.perkalian
puts hasil_perkalian

# OOP Getter-Setter
class Print
    def initialize(text)
        @text = text
    end

    def print
        puts @text
    end
end

printer = Print.new('Saya sedang belajar getter-setter')
printer.print

printer = Print.new('Sata sedang mendalai getter-setter')
printer.print
puts '============='

class Print
    def initialize(text)
        @text = text
    end

    # setter
    def text=(kalimat)
        @text = kalimat
    end

    # getter
    def text
        @text
    end
end

puts '======================'

class MesinPencetak
    #sttr_reader : text, :duration
    #fungsinya untuk mengambil atribut/instant variabel yang diinginkan 
    #sttr_writer : text, :duration
 
    attr_accessor :text, :duration
    #untuk menggabungkan writter dan reader
     def initialize(text, duration)
        @text = text
        @duration = duration
     end
     def cetak
        puts "Hari ini saya belajar method #{@duration}"
        puts "waktu yang diperlukan untuk belajarnya adalah #{@duration}"
     end
    end
mesinku = MesinPencetak.new("getter", "sebentar")
mesinku.cetak
mesinku.text = "setter"
mesinku.duration = "semenit"
mesinku.cetak

puts '======================'

class MesinPencetak
    
    attr_accessor :text
    #untuk menggabungkan writter dan reader
     def initialize(text)
        @text = text
     end
     def cetak(format)
        cekformat(@text, format)
    end
    #private
    def cekformat(text,format)
        if format == :plain 
            text
        elsif format == :blink
        "***#{text} ***"
     end
    end
    end

    mesinku = MesinPencetak.new('Belajar Ruby dan Ruby on Rails')
    puts mesinku.cetak(:blink)
    puts mesinku.cetak(:plain)

    puts mesinku.cekformat("tes", :blink)

    puts '========================'

    class Siswa
        attr_accessor :nama, :materi, :nilai

        def initialize (nama, materi, nilai)
            @nama = nama
            @materi = materi 
            @nilai = nilai
        end
        def belajar
            puts "siswa #{@nama} sedang belajar #{materi}"
        end
        def ulangan 
            puts "siswa #{@nama} mendapatkan nilai #{nilai} untuk materi #{materi}"
        end
    end
    class Kelas12 < Siswa
        attr_accessor :mapel, :nilai_un

        def initialize(mapel, nilai_un)
        @mapel = mapel
        @nilai_un = nilai_un
    end

    def unbk
        puts "Siswa #{@nama} mengerjakan un mapel #{@mapel} dengan nilai #{@nilai_un}"
    end
end 

sutera =Siswa.new('sutera', 'Ruby', '10')
sutera.belajar
sutera.ulangan

Eno = Kelas12.new('Matematika', '10')
Eno.nama = 'Eno'
Eno.materi = 'Ruby on rails'
Eno.nilai = 9
Eno.belajar
Eno.ulangan
Eno.unbk

puts '==============='

class ApiConnection
    attr_accessor :url, :nama
    def initialize (url,nama)
        @url = url
        @nama = nama
    end
    def connect 
        @connect = true 
    end
    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end 
end
class FacebookConnection < ApiConnection
    def version
        1
    end
    def status
        :connected
    end
end
facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version


puts '================' #supermethode

class ApiConnection
    attr_accessor :url, :nama
    def initialize (url,nama)
        @url = url
        @nama = nama
    end
    def connect 
        @connect = true 
    end
    def status
        if @connect
            :connected
        else
            :unconnected
        end
    end 
end
class FacebookConnection < ApiConnection
    class << self

    def version
        1
    end
    def connect
        super 
        puts 'connection established'
    end
    def status
        super
    end
end
facebook_connection = FacebookConnection.new('https://facebook.com', 'facebook')

status = facebook_connection.status
version = facebook_connection.version

puts status
puts version