import 'package:flutter/material.dart';

class ButonOrnekleri extends StatefulWidget {
  const ButonOrnekleri({super.key});

  @override
  State<ButonOrnekleri> createState() => _ButonOrnekleriState();
}

class _ButonOrnekleriState extends State<ButonOrnekleri> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text('text Button'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('İcon button'),
        ),
     ///////////////////////////////////////////
       
        ElevatedButton.icon(onPressed: (){}, 
        icon: Icon(Icons.add),
        label: Text('Elevated icon button'),
        ),
     ///////////////////////////////////////////
        OutlinedButton(onPressed: (){},
         child: Text('Outline button'),
         ),
         OutlinedButton.icon(onPressed: (){}, 
        icon: Icon(Icons.add),
        label: Text('Elevated icon button'),
        ),
      ],
    );
  }
}
