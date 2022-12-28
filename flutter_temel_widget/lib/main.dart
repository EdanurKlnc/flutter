import 'package:flutter/material.dart';
import 'package:flutter_temel_widget/butonlar.dart';
import 'package:flutter_temel_widget/img_widget.dart';
import 'package:flutter_temel_widget/sayac.dart';

void main() {
  debugPrint('main methodu çalıştı');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {//stl
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      debugPrint('myapp build çalıştı');

    return MaterialApp(
      title: 'Flutter Kullanımı',
      theme: ThemeData(primarySwatch: Colors.orange //Uygulamanın teması
          ),
      home: Scaffold(
        appBar: AppBar(title: Text('Temel Bilgiler'),
        ),
       //body: ImageOrnekleri(),
         body: ButonOrnekleri(),

      ),
    );
  }
}
