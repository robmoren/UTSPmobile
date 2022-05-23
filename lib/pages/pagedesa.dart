import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:matcher/matcher.dart';

class Pagedesa extends StatefulWidget {
  const Pagedesa({Key? key}) : super(key: key);

  @override
  State<Pagedesa> createState() => _PagedesaState();
}

class _PagedesaState extends State<Pagedesa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelurahan dan Desa'),
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
                    "https://i0.wp.com/tracking.cekresi.com/wp-content/uploads/2020/12/jne-curug.jpeg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Kelurahan :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Curug Kulon\nSukabakti\nBinong",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(
                "Desa :",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                "Cukanggalih\nKadu Jaya\nKadu\nCurug Wetan",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
