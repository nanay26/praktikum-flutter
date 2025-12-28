import 'package:flutter/material.dart';

class Praktikum13Spacing extends StatelessWidget {
  const Praktikum13Spacing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktikum 1.3 - Spacing'),
      ),
      body: Padding(padding: const EdgeInsets.all(16),
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

