void main(List<String> args) {
   Veritabani db = OracleDB(); //üst sınıftan türettik
  // Veritabani db = FirebaseDB(); Hangi veritabanını kullanıcaksak onu yazmamız yeterli
  db.userDelete();

}

abstract class Veritabani{ //gövdesi boş olan ifadeler olduğunda bu sınıf tanımlanır. nesne üretemez
 void userSave();
 void userUpdate();
 void userDelete();
 //Yeni ekleme yaptığımızda extends edilen sınıflara onu eklemek zorundayız
}

class OracleDB extends Veritabani{ //abstract sınıfındakilerini override ettik
  @override
  void userDelete() {
    print("Oracle dbden user silindi");
    // TODO: implement userDelete
  }

  @override
  void userUpdate() {
    // TODO: implement userUpdate
  }

  @override
  void userSave() {
    // TODO: implement voiduserSave
    throw UnimplementedError();
  }
  }
  class FirebaseDB extends Veritabani{ //abstract sınıfındakilerini override ettik
  @override
  void userDelete() {
    print("Firebase dbden user silindi");
    // TODO: implement userDelete
  }

  @override
  void userUpdate() {
    // TODO: implement userUpdate
  }

  @override
  void userSave() {
    // TODO: implement voiduserSave
    throw UnimplementedError();
  }
  }
