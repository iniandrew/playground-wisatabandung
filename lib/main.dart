import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Container(
                 margin: const EdgeInsets.only(top: 16.0),
                 child: const Text(
                     'Farm House Lembang',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 30.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
             ),
             Container(
               margin: const EdgeInsets.symmetric(vertical: 16.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Column(
                     children: const [
                       Icon(Icons.calendar_today),
                       Text('Open Yesterday'),
                     ],
                   ),
                   Column(
                     children: const [
                       Icon(Icons.punch_clock),
                       Text('09.00 - 20.00'),
                     ],
                   ),
                   Column(
                     children: const [
                       Icon(Icons.money),
                       Text('Rp 25.000'),
                     ],
                   ),
                 ],
               ),
             ),
             Container(
               padding: const EdgeInsets.all(16.0),
               child: const Text(
                 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 16.0),
               ),
             )
           ],
         ),
       )
     );
  }
}
