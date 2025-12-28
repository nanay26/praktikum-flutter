import 'package:flutter/material.dart';

class Praktikum24GridAdaptive extends StatelessWidget {
  const Praktikum24GridAdaptive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('2.4 - Grid Adaptif')),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(12, (index) {
          return Card(
            color: Colors.indigo[50 * ((index % 8) + 1)],
            child: Center(child: Text('Item $index')),
          );
        }),
      ),
    );
  }
}