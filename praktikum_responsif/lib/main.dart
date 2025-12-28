import 'package:flutter/material.dart';
import 'praktikum2_1_mediaquery.dart';
import 'praktikum2_2_responsive_row_column.dart';
import 'praktikum2_3_layoutbuilder.dart';
import 'praktikum2_4_grid_adaptive.dart';
import 'praktikum2_5_mini_project_responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum Responsif',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      // GANTI bagian di bawah ini untuk melihat file praktikum lainnya:
      home: const Praktikum25MiniProject(), 
    );
  }
}