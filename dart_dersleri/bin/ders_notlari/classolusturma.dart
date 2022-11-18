//Class oluşturarak bilgileri tuttacağız
//Class main dışında tanımlanmalı
void main(List<String> args) {
/*
  Araba honda=Araba(); //var honda = Araba(); şeklindede oluşturabiliriz
  honda.km=250;
  honda.model= 2021;
  honda.renk="mavi";
  honda.bilgileriSoyle();   //Bilgileri ekrana yazdırma */
  
  //2.yol
  Araba bmw =Araba(2022,100,"Kırmızı"); 
  bmw.bilgileriSoyle();

}
//Kurucu method bir nesne ürettiğimizde çalışan ilk method
class Araba{ //Ne ile ilgili bilgi tutmak istediğimizi class ismi olarak belirledik
 
 int? model; //Tutmak istediğimiz özellikler
 int? km;
 String? renk; 

//2.Yol
Araba(int model, int km, String renk){
  print("Kurucu method tetiklendi");
  this.model= model;
  this.km= km;
  this.renk= renk;
}
void bilgileriSoyle(){
  print("Arabanın özellikleri $model , $km, $renk");
} 
}