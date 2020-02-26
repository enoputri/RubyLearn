class MesinPencetak
    attr_reader :text

    def initialize(text)
        @text = text
    end

    #method setter
    def text=(text)
        @text = text
    end

     def cetak
        "Hari ini saya belajar method #{@text}."
    end

end

mesinku = MesinPencetak.new("getter")
puts mesinku.text
puts mesinku.cetak

puts '========================='

