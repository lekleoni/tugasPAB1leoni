import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeri Foto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GaleriFoto(),
    );
  }
}

class GaleriFoto extends StatelessWidget {
  const GaleriFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeri Foto'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.network('https://picsum.photos/id/88/300/200',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Jalan Di Barcelona',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Icon(
                    Icons.place,
                    color: Colors.red,
                  ),
                  Text('Lokasi : Barcelona, Spanyol', style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.calendar_month,
                color: Colors.blue,
              ),
              Text('Publikasi : 23 Agustus 2023', style: TextStyle(color: Colors.black)),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Deskripsi',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
