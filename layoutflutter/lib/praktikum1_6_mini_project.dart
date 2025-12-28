import 'package:flutter/material.dart';

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
