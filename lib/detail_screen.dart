import 'package:flutter/material.dart';

const informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('images/farm-house.jpg'),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Farm House Lembang',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Staatliches',
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
                          Text(
                            'Open Yesterday',
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.access_time),
                          Text(
                            '09.00 - 20.00',
                            style: informationTextStyle,
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.monetization_on),
                          Text(
                            'Rp 25.000',
                            style: informationTextStyle,
                          ),
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
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                          child: Image.network('https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                        )
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        )
    );
  }
}