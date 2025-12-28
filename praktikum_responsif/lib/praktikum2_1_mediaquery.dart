import 'package:flutter/material.dart';

class Praktikum21MediaQuery extends StatelessWidget {
  const Praktikum21MediaQuery({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('2.1 - MediaQuery')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.devices, size: 80, color: Colors.indigo),
            const SizedBox(height: 20),
            const Text('Lebar Layar Anda:', style: TextStyle(fontSize: 16)),
            Text(
              '${width.toInt()} px',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}