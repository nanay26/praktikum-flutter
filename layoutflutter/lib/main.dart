import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPraktikum(),
    );
  }
}

/* =========================
   MENU PRAKTIKUM
   ========================= */
class MenuPraktikum extends StatelessWidget {
  const MenuPraktikum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Praktikum Flutter'),
      ),
      body: ListView(
        children: [
          _menuItem(
            context,
            title: 'Praktikum 1.1 - Column',
            page: const Praktikum11Column(),
          ),
          _menuItem(
            context,
            title: 'Praktikum 1.2 - Row',
            page: const Praktikum12Row(),
          ),
          _menuItem(
            context,
            title: 'Praktikum 1.3 - Spacing',
            page: const Praktikum13Spacing(),
          ),
          _menuItem(
            context,
            title: 'Praktikum 1.4 - Container',
            page: const Praktikum14Container(),
          ),
          _menuItem(
            context,
            title: 'Praktikum 1.5 - Expanded',
            page: const Praktikum15Expanded(),
          ),
          _menuItem(
            context,
            title: 'Praktikum 1.6 - Mini Project',
            page: const Praktikum16MiniProject(),
          ),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context,
      {required String title, required Widget page}) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
    );
  }
}

/* =========================
   PRAKTIKUM 1.1 - COLUMN
   ========================= */
class Praktikum11Column extends StatelessWidget {
  const Praktikum11Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.1 - Column'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Belajar Column',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 12),
            Text('Contoh layout vertikal'),
          ],
        ),
      ),
    );
  }
}

/* =========================
   PRAKTIKUM 1.2 - ROW
   ========================= */
class Praktikum12Row extends StatelessWidget {
  const Praktikum12Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.2 - Row'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(Icons.home, size: 40),
          Icon(Icons.favorite, size: 40),
          Icon(Icons.settings, size: 40),
        ],
      ),
    );
  }
}

/* =========================
   PRAKTIKUM 1.3 - SPACING
   ========================= */
class Praktikum13Spacing extends StatelessWidget {
  const Praktikum13Spacing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.3 - Spacing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Teks Pertama'),
            SizedBox(height: 20),
            Text('Teks Kedua'),
          ],
        ),
      ),
    );
  }
}

/* =========================
   PRAKTIKUM 1.4 - CONTAINER
   ========================= */
class Praktikum14Container extends StatelessWidget {
  const Praktikum14Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.4 - Container'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        color: Colors.blueAccent.shade100,
        child: const Text('Isi Container'),
      ),
    );
  }
}

/* =========================
   PRAKTIKUM 1.5 - EXPANDED
   ========================= */
class Praktikum15Expanded extends StatelessWidget {
  const Praktikum15Expanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.5 - Expanded'),
      ),
      body: Row(
        children: [
          Expanded(child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.green)),
          Expanded(child: Container(color: Colors.blue)),
        ],
      ),
    );
  }
}

/* =========================
   PRAKTIKUM 1.6 - MINI PROJECT
   ========================= */
class Praktikum16MiniProject extends StatelessWidget {
  const Praktikum16MiniProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.6 - Mini Project'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 8),
              ],
            ),
            child: Column(
              children: const [
                TextField(
                  decoration: InputDecoration(labelText: 'Nama'),
                ),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
