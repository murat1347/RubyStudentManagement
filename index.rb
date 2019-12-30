require_relative 'bilgiler.rb'
require_relative 'bilgiliste.rb'


class Otomasyon
     def main
        liste = ContactList.new #contactlist adında obje olusturduk.
        Anamenu()
        sayi=gets.chomp.to_i

        liste=Secim(sayi,liste)
       
    
    end
    def Anamenu()
        puts "\n Menu \n"
        puts "1.Ogrenci Ekle"
        puts "2.Ogrenci Sil"
        puts "3.Ogrenci bilgi guncelle"
        puts "4.Tum Ogrencileri Goruntule"
        puts "5.cıkıs"
        puts "Seciminizi Yapmak için bir tuşa basınız. "
        
    end
    def Secim(sayi,inList)
        if  sayi==1
            
            puts "Ogrenci isimi giriniz"
            newContact = Contact.new(gets.chomp.to_s)
            puts "Ogrenci Soyadı giriniz"
            newContact.soyad=gets.chomp.to_s
            puts "Ogrenci Okul no giriniz"
            newContact.no=gets.chomp.to_i
            puts "Ogrenci notu giriniz"
            newContact.notu=gets.chomp.to_i
           
           
            puts "başarıyla eklendi"
            
            puts newContact.isim
            
            Anamenu()
        
        elsif sayi==2
            puts "Silinecek Ogrenci no giriniz."
            deletesayi=gets.chomp.to_i
            @ogrenci.delete("deletesayi")
            sleep (4)
            puts "İslem tamamlandı."
            Anamenu()
        elsif sayi==3
            puts "Güncellenecek Ogrenci no giriniz."
            updatesayi=gets.chomp.to_i
            puts "Yeni degeri geriniz."
            yenisayi=gets.chomp.to_i
            @ogrenci["isim"]="halil"
            print @ogrenci
            puts "Güncelleme başarılı."
            Anamenu()
        elsif sayi==4
            puts "Ogrenciler goruntuleniyor."
            sleep (3)
            print newContact.isim
            arr=[]
            arr<< newContact.isim
            puts arr

            arr.each do |value|
            puts "#{value} is"end
            #sortedList = ContactList.new
            #sortedList.contactListWhole = newContact.contactListWhole.sort{ |x,y| x.isim <=> y.isim }
            
            print newContact            #print "#{inList.contactList(0)}"
            

            
            
          
        elsif sayi==5
            sleep (3)
            puts "cıkıs yapıliyor"
            exit 1
        else
            puts "gecersiz islem! "
            Anamenu()
        end
    end
loop do
runProgram=Otomasyon.new
runProgram.main
end

end