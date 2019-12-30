class Contact
  def initialize(isim)
    @isim = isim
    @soyad = ""
    @no= ""
    @notu = ""
  end 

  def isim=(isim)
    @isim = isim
  end 

  def soyad=(soyad)
    @soyad = soyad
  end 

  def no=(no)
    @no = no
  end 
  
  def notu=(notu)
    @notu = notu
  end

  def isim
    @isim
  end

  def soyad
    @soyad
  end

  def no
    @no
  end

  def notu
    @notu
  end

end
