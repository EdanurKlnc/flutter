
import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounterPage> {
  int _sayac = 0;

  @override
  Widget build(BuildContext context) {
      debugPrint('myHomePage build çalıştı');

    return Scaffold(
      appBar: AppBar(
        title: Text('Sayaç Uygulaması'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Butona basılma miktarı',
              style: TextStyle(fontSize: 24),
            ),
            Text(
            _sayac.toString(), //değeri yazdırma
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            debugPrint('butona tıklandı');
            sayaciArttir();

        },
        child: Icon(Icons.add),
      ),
    );
  }

  void sayaciArttir() {
    setState(() { //ilgili widgetin buildi tetiklenir
      
    });
    _sayac++;


}
}
