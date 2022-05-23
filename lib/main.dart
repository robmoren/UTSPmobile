import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gis/pages/pagedesa.dart';
import 'package:gis/pages/pageluas.dart';
import 'package:gis/pages/pagepopulasi.dart';
import 'package:gis/pages/pagewilayah.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text('App Gis'),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text('Kecamatan Curug'),
                    const Text('Beranda Aplikasi'),
                    const Text('Info Seputar Kecamatan'),
                  ],
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PageLuas(),
                    ),
                  );
                },
                leading: const Icon(Icons.home),
                title: const Text(
                  "Luas Kecamatan",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pagepopulasi(),
                    ),
                  );
                },
                leading: Icon(Icons.person),
                title: Text(
                  "Jumlah Populasi",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pagewilayah(),
                    ),
                  );
                },
                leading: Icon(Icons.map),
                title: Text(
                  "Batas Wilayah",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pagedesa(),
                    ),
                  );
                },
                leading: Icon(Icons.work),
                title: Text(
                  "Desa dan Kelurahan",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: FlutterMap(
          options:
              MapOptions(center: LatLng(-6.2368133, 106.5313553), zoom: 14.0),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a'])
          ],
        ),
      ),
    ));
  }
}
