import 'dart:io';

void main(List<String> args) {
  print("adınızı giriniz");
 // stdin.readLineSync(); kullanıcının değer girmesini bekler
String? isim = stdin.readLineSync(); //kullanıcının gireceği değeri string değişkeninde tutuyoruz
print("girilen isim $isim");


 print("yasınızı giriniz");
int? yas = int.parse(stdin.readLineSync()!); // girilen değeri stringten int cevirmemiz lazım (int.parse) ile ceviriyoruz
yas = yas+2;
print("girilen yas $yas");




}