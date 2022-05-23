import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:matcher/matcher.dart';

class Pagepopulasi extends StatefulWidget {
  const Pagepopulasi({Key? key}) : super(key: key);

  @override
  State<Pagepopulasi> createState() => _PagepopulasiState();
}

class _PagepopulasiState extends State<Pagepopulasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Populasi di Kec Curug'),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://docplayer.info/docs-images/62/47715424/images/10-1.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text(
                "Populasi :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Jumlah : 165.000 jiwa",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
