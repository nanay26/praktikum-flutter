import 'package:flutter/material.dart';

class Praktikum25MiniProject extends StatelessWidget {
  const Praktikum25MiniProject({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('2.5 - Mini Project'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: width < 600 ? _buildListView() : _buildGridView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => _buildCard(index),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 10,
      itemBuilder: (context, index) => _buildCard(index),
    );
  }

  Widget _buildCard(int index) {
    return Card(
      margin: const EdgeInsets.all(8),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.shopping_bag, size: 40, color: Colors.indigo),
          const SizedBox(height: 10),
          Text('Produk Ke-$index', style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}