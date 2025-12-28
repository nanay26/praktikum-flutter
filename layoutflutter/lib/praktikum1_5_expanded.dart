import 'package:flutter/material.dart';

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
