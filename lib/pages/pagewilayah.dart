import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:matcher/matcher.dart';

class Pagewilayah extends StatefulWidget {
  const Pagewilayah({Key? key}) : super(key: key);

  @override
  State<Pagewilayah> createState() => _PagewilayahState();
}

class _PagewilayahState extends State<Pagewilayah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Batas Wilayah Kec. Curug'),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://docplayer.info/docs-images/62/47715424/images/9-1.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Utara :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Kota Tangerang",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Timur :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Kec. Kelapa Dua",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Selatan :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Kec. Panongan",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Barat :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Kec. Cikupa",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
