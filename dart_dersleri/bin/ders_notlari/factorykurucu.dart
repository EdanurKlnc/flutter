void main(List<String> args) {
   Ogrenci eda = Ogrenci(1, "Eda");
   Ogrenci tugba = Ogrenci.idSiz("Tuğba"); //İsimlendirilmiş kurucu  
  Ogrenci hazar = Ogrenci.factoryKurucusu(-5,"Hazar");
  
  print(hazar.id);
  print(hazar.isim);
  
}


class Ogrenci{
  int id=0;
  String isim = "";
  
  Ogrenci(this.id,this.isim) // Burada belirttiğimiz sıraya göre yukarıda yazıyoruz
  {
    print("Varsayılan kurucu çalıştı");
  }

  Ogrenci.idSiz(this.isim){ //İsimlendirilmiş kurucu
    print("İsimlendirilmiş kurucu çalıştır");
  }

  //Farklı durumlara göre kurucu oluşturma "Factory Kuruc"
   factory Ogrenci.factoryKurucusu(int id ,String isim){
    if(id < 0) {
      return Ogrenci(1, isim);
    }else {
    return Ogrenci(id, isim);
    }
   }
}