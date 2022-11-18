/*
abstract class Hayvan{
  void fly();
  void run();
  void bark();
}

class Kus extends Hayvan{ // Kuş için haylamak gereksiz. Fazla koddan kaçınmak için başka sınıfa aktarmamız lazım
  @override
  void bark() {
    print("Kuşlar hayvalamaz");
    }

  @override
  void fly() {
    print("Kuşlar ucar");
    }

  @override
  void run() {
    print("Kuşlar koşamaz");
  }

}*/

void main(List<String> args) {
  
}
//Yukarıdaki kullanımımda extends edilen classların hepsinde override etmemiz gerektiği için
// gereksiz kod oluşuyor. O yüzden sınıflara ayırarak özellikleri yazıyoruz

abstract class Ucabilenler{
  void fly();
}

abstract class Kosabilenler{
  void run();
}

abstract class Hayvalabilenler{
  void bark();
}

//Birden fazla sınıfı extends edemeyiz o yüzden implements kullanacağız
class Kopek implements Hayvalabilenler,Kosabilenler{
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

} 

class Kus implements Ucabilenler{
  @override
  void fly() {
    // TODO: implement fly
  }

}