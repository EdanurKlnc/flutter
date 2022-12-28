import 'package:flutter/material.dart';
import 'package:hesap_makinesi/gorunum/butontasarimi.dart';

void main() {
  runApp(const HesapMakinesi());
}

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  late int sayi1;
  late int sayi2;
  String gosterilecekSayi = "";
  String islemGecmisi = "";
  late String sonuc;
  late String islem;

  //Buton tiklama
  void btnTiklama(String butonDegeri) {
    print(butonDegeri);

    if (butonDegeri == "+") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islem = butonDegeri;
    } else if (butonDegeri == "-") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islem = butonDegeri;
    } else if (butonDegeri == "*") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islem = butonDegeri;
    } else if (butonDegeri == "/") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islem = butonDegeri;
    }else if (butonDegeri == "%") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islem = butonDegeri;
    } else if (butonDegeri == "AC") {
      gosterilecekSayi = "";
      sonuc = "";
      sayi1 = 0;
      sayi2 = 0;
      islem = "";
      islemGecmisi = "";
    } else if (butonDegeri == "=") {
      sayi2 = int.parse(gosterilecekSayi);

      if (islem == "+") {
        sonuc = (sayi1 + sayi2).toString();
        islemGecmisi = sayi1.toString() + islem.toString() + sayi2.toString();
      } else if (islem == "-") {
        sonuc = (sayi1 - sayi2).toString();
        islemGecmisi = sayi1.toString() + islem.toString() + sayi2.toString();
      } else if (islem == "*") {
        sonuc = (sayi1 * sayi2).toString();
        islemGecmisi = sayi1.toString() + islem.toString() + sayi2.toString();
      } else if (islem == "/") {
        sonuc = (sayi1 / sayi2).toString();
        islemGecmisi = sayi1.toString() + islem.toString() + sayi2.toString();
      }else if (islem == "%") {
        sonuc = (sayi1%sayi2).toString();
        islemGecmisi = sayi1.toString() + islem.toString() + sayi2.toString();
      }
    } else {
      sonuc = int.parse(gosterilecekSayi + butonDegeri).toString();
    }

    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //uygulamadıki debug yazısını kaldırma
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hesap Makinesi'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment(1.0, 1.0), // sağa yaslı
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  islemGecmisi,
                  style: TextStyle(fontSize: 30, color: Colors.black54),
                ),
              ),
            ),
            Container(
              alignment: Alignment(1.0, 1.0),
              child: Text(
                gosterilecekSayi,
                style: TextStyle(fontSize: 35, color: Colors.black54),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HesapMakinesiButon(
                  sayi: "1",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "2",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "3",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "+",
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HesapMakinesiButon(
                  sayi: "4",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "5",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "6",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "-",
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HesapMakinesiButon(
                  sayi: "7",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "8",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "9",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "*",
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HesapMakinesiButon(
                  sayi: "0",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: ".",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "%",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "/",
                  tiklama: btnTiklama,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HesapMakinesiButon(
                  sayi: "AC",
                  tiklama: btnTiklama,
                ),
                HesapMakinesiButon(
                  sayi: "=",
                  tiklama: btnTiklama,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
