//Class oluşturarak bilgileri tuttacağız
//Class main dışında tanımlanmalı
void main(List<String> args) {

  Araba honda=Araba(); //var honda = Araba(); şeklindede oluşturabiliriz
  honda.km=250;
  honda.model= 2021;
  honda.renk="mavi";
  honda.bilgileriSoyle();   //Bilgileri ekrana yazdırma
}

class Araba{ //Ne ile ilgili bilgi tutmak istediğimizi class ismi olarak belirledik
 
 int? model; //Tutmak istediğimiz özellikler
 int? km;
 String? renk;

void bilgileriSoyle(){
  print("Arabanın özellikleri $model , $km, $renk");
}
}