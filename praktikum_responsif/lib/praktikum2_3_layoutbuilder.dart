import 'package:flutter/material.dart';

class Praktikum23LayoutBuilder extends StatelessWidget {
  const Praktikum23LayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('2.3 - LayoutBuilder')),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(16),
          color: Colors.grey[200],
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 400) {
                return Column(mainAxisSize: MainAxisSize.min, children: _buildItems());
              } else {
                return Row(mainAxisSize: MainAxisSize.min, children: _buildItems());
              }
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildItems() {
    return [
      Expanded(child: Container(color: Colors.blue, height: 100)),
      const SizedBox(width: 10, height: 10),
      Expanded(child: Container(color: Colors.orange, height: 100)),
    ];
  }
}