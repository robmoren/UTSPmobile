import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:matcher/matcher.dart';

class PageLuas extends StatefulWidget {
  const PageLuas({Key? key}) : super(key: key);

  @override
  State<PageLuas> createState() => _PageLuasState();
}

class _PageLuasState extends State<PageLuas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Luas Kecamatan'),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              image: const DecorationImage(
                  image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/id/a/a5/Locator_Kecamatan_Curug_di_Kabupaten_Tangerang.png",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text(
                "Kecamatan Curug :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Luas : 27,41 km²",
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
