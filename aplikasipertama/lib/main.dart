import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // --- TEMA TERANG (LIGHT THEME) ---
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        // Menggunakan primary color untuk AppBar
        backgroundColor: Colors.indigo, 
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo, // Warna utama yang lebih menenangkan
        brightness: Brightness.light,
      ),
      useMaterial3: true,
    );

    // --- TEMA GELAP (DARK THEME) ---
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo, 
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );

    return MaterialApp(
      title: 'Aplikasi Interaktif Material 3',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // Mengikuti pengaturan sistem
      home: const MyHomePage(title: 'Aplikasi Pertama Saya'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Mengatur batas maksimum counter (opsional)
      if (_counter < 99) {
        _counter++;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      // Mengatur batas minimum counter (opsional)
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.calculate),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _counter = 0; // Reset counter
              });
            },
            tooltip: 'Reset',
          ),
          const SizedBox(width: 8),
        ],
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon( 
              Icons.folder_open,
              size: 100,
              color: theme.colorScheme.primary,
            ),        
            // --- Card Informasi ---
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              elevation: 5, // Memberikan bayangan (kedalaman)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Sudut yang lebih bulat
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Nilai Saat Ini:',
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Teks Counter Utama
                    Text(
                      '$_counter',
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary, // Menggunakan warna utama
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // --- Tombol Dekremen ---
            ElevatedButton.icon(
              onPressed: _decrementCounter,
              icon: const Icon(Icons.remove),
              label: const Text('Kurangi'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: theme.colorScheme.error, // Menggunakan warna error untuk mengurangi
                foregroundColor: theme.colorScheme.onError,
              ),
            ),
          ],
        ),
      ),
      
      // --- Floating Action Button yang Lebih Menarik (Extended) ---
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _incrementCounter,
        tooltip: 'Tambahkan Counter',
        icon: const Icon(Icons.add),
        label: const Text('TAMBAH'),
        backgroundColor: theme.colorScheme.tertiary, // Warna sekunder
        foregroundColor: theme.colorScheme.onTertiary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}