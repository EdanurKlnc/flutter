import 'package:flutter/material.dart';

class HesapMakinesiButon extends StatelessWidget {
  final String sayi;
  final Function tiklama;

  const HesapMakinesiButon(
      {super.key, 
      required this.sayi,
        required this.tiklama});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      child: SizedBox(
        width: 85,
        height: 85,
        child: ElevatedButton(
          onPressed: () {
            tiklama(sayi);
          },
          child: Text(
            sayi,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
