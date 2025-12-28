import 'package:flutter/material.dart';

class Praktikum22Responsive extends StatelessWidget {
  const Praktikum22Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('2.2 - Responsif Dasar')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: width < 600
            ? Column(children: _buildBoxes())
            : Row(children: _buildBoxes()),
      ),
    );
  }

  List<Widget> _buildBoxes() {
    return [
      Expanded(
        child: Container(
          color: Colors.redAccent,
          height: 150,
          child: const Center(child: Text('Kotak A', style: TextStyle(color: Colors.white))),
        ),
      ),
      const SizedBox(width: 16, height: 16),
      Expanded(
        child: Container(
          color: Colors.greenAccent[700],
          height: 150,
          child: const Center(child: Text('Kotak B', style: TextStyle(color: Colors.white))),
        ),
      ),
    ];
  }
}