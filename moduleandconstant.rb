class NamaModule
    XXX = 100

    LOKAL = 'lokal variable'

    def method
        puts "method dari konstan"
    end

    module A 
        XXX = 200
    end
end

puts NamaModule::XXX
puts NamaModule::LOKAL
puts NamaModule::A::XXX

module Kerenz
    class ApiConnection
        def connect 
            puts 'koneksi dari kerenz : ApiConnection'
        end
    end
end

module Kool 
    class ApiConnection
        def connect
            puts 'koneksi dari kool : ApiConnection'
        end
    end
end

con = Kerenz::ApiConnection.new
con.connect

con = Kool::ApiConnection.new
con.connect


