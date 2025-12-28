import 'package:flutter/material.dart';

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
