import 'package:flutter/material.dart';

void main() {
  runApp(const PraktikumApp());
}

class PraktikumApp extends StatelessWidget {
  const PraktikumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 2 Praktikum',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PraktikumPage(),
    );
  }
}

class PraktikumPage extends StatefulWidget {
  const PraktikumPage({super.key});

  @override
  State<PraktikumPage> createState() => _PraktikumPageState();
}

class _PraktikumPageState extends State<PraktikumPage> {
  bool _showImage = false; // state toggle gambar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Praktikum Tugas 2"),
      ),
      body: Column(
        children: [
          // Bagian teks panjang scrollable
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: const Text(
                "Kita hidup di puncak peradaban yang terobsesi dengan kemudahan, "
                "di mana dari memesan makanan hingga menemukan pasangan hidup, "
                "setiap aspek eksistensi manusia dapat diakses melalui beberapa "
                "ketukan di layar kaca. Namun, dalam pengejaran tanpa henti terhadap "
                "efisiensi ini, kita mungkin tanpa sadar sedang mengorbankan sesuatu "
                "yang jauh lebih berharga: kedalaman, ketahanan, dan esensi dari "
                "pengalaman manusia itu sendiri. Setiap kali kita menggunakan GPS, "
                "mengandalkan ringkasan otomatis, atau membiarkan algoritma mendikte "
                "selera kita, kita menyerahkan kesempatan untuk melakukan penemuan "
                "mandiri dan mengasah intuisi. Kemudahan, dalam praktiknya, sering "
                "kali menjadi jalan pintas yang menghindari proses, padahal justru "
                "di dalam proses yang melibatkan kesulitan, kebosanan, dan perjuangan "
                "itulah pertumbuhan sejati terjadi—fitur esensial yang memahat karakter, "
                "mengasah keterampilan, dan menumbuhkan kebijaksanaan. Dari sudut pandang "
                "pragmatis yang dingin, ketergantungan ini adalah sebuah risiko strategis, "
                "karena ia berpotensi menciptakan masyarakat yang efisien di permukaan "
                "tetapi rapuh di dalam, sebuah generasi yang kehilangan kemampuan "
                "fundamental untuk bernavigasi dalam kompleksitas kehidupan tanpa bantuan teknologi."
                ,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Bagian ImageView / Container
          Container(
            height: 200,
            width: double.infinity,
            color: _showImage ? Colors.transparent : Colors.grey[300],
            child: _showImage
                ? Image.asset(
                    'assets/images/2ima.jpg', // pastikan ada di assets
                    fit: BoxFit.contain,
                  )
                : const Center(
                    child: Text(
                      "Warna Background",
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                  ),
          ),
          const SizedBox(height: 10),
          // Tombol-tombol (layout horizontal)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _showImage = !_showImage; // toggle gambar
                  });
                },
                child: Text(_showImage ? "Kembali ke Warna" : "Tampilkan Gambar"),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Tombol lain ditekan!")),
                  );
                },
                child: const Text("Tombol Lain"),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}