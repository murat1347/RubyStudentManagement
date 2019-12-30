require_relative ('bilgiler.rb')
require_relative ('bilgiliste.rb')


class Otomasyon
     def index
        @inList = inList.all
        puts @inList
        end

     def main
        liste = ContactList.new #contactlist adında obje olusturduk.
        index =""
        puts "Hosgeldiniz."
        
        while (index != "0")
        index = Anamenu(index) #Open Main Menu
        liste = Secim(index, liste) #Open selected Menu
        end #END while
            
        puts "exit"
       
    
    end
    def Anamenu(index)
        puts "\n Menu \n"
        puts "1.Ogrenci Ekle"
        puts "2.Ogrenci Sil"
        puts "3.Ogrenci bilgi guncelle"
        puts "4.Tum Ogrencileri Goruntule"
        puts "5.cıkıs"
        puts "Seciminizi Yapmak için bir tuşa basınız. "
        sayi = gets.chomp
        sayi
    end
    def Secim(sayi,inList)
        
        case
        when  sayi=="1"
            inList=KayitOlustur(inList)
            
        
        when sayi=="2"
            displayList(inList)
            inList = removeContact(inList)
        when sayi=="3"
            puts "Güncellenecek Ogrenci no giriniz."
            updatesayi=gets.chomp.to_i
            puts "Yeni degeri geriniz."
            yenisayi=gets.chomp.to_i
            @ogrenci["isim"]="halil"
            print @ogrenci
            puts "Güncelleme başarılı."
            Anamenu()
        when sayi=="4"
            Goruntuleme(inList)
          
        when sayi=="5"
            sleep (3)
            puts "cıkıs yapıliyor"
            exit 1
        else
            puts "gecersiz islem! "
            Anamenu()
        end

        end
        def KayitOlustur(inList)
            puts "Ogrenci isimi giriniz"
            newContact = Contact.new(gets.chomp.to_s)
            puts "Ogrenci Soyadı giriniz"
            newContact.soyad=gets.chomp.to_s
            puts "Ogrenci Okul no giriniz"
            newContact.no=gets.chomp.to_i
            puts "Ogrenci notu giriniz"
            newContact.notu=gets.chomp.to_i
            @inList=newContact
            puts "başarıyla eklendi"
            
            puts @inList
            
            inList
        end

        def kayitsil(inList)
            puts "Silinecek Ogrenci no giriniz."
            deletesayi=gets.chomp.to_i
            @ogrenci.delete("deletesayi")
            sleep (4)
            puts "İslem tamamlandı."
            Anamenu()
        end

        def Goruntuleme(inList)
            puts "Ogrenciler goruntuleniyor."
            sleep (3)
           
            #sortedList = ContactList.new

            #My custom sort!(But not somehting special)
            index = 0
            max = inList.counter


            while index < max
                puts " [#{index+1}] - #{inList.contactList(index)}"
                index+= 1
            end
            @isim.each do |inList|
                puts "#{isim} Bir Programlama Dilidir!"
            end
                    
                    
        end
    end

loop do
runProgram=Otomasyon.new
runProgram.index
runProgram.main
end