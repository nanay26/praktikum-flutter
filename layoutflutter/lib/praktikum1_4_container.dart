import 'package:flutter/material.dart';

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
        color: Colors.blue.shade100,
        child: const Text('Isi Container'),
      ),
    );
  }
}
