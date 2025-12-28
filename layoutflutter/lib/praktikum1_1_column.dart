import 'package:flutter/material.dart';

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
