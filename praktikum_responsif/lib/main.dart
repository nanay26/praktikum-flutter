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
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuItems = [
      {
        'title': 'Media Query',
        'subtitle': 'Adaptasi ukuran layar',
        'icon': Icons.devices_other_rounded,
        'color': Colors.blue,
        'page': Praktikum21MediaQuery(),
      },
      {
        'title': 'Responsive Row/Col',
        'subtitle': 'Layout Flex & Expanded',
        'icon': Icons.view_quilt_rounded,
        'color': Colors.orange,
        'page': Praktikum22Responsive(),
      },
      {
        'title': 'Layout Builder',
        'subtitle': 'Constraint-based layout',
        'icon': Icons.layers_outlined,
        'color': Colors.purple,
        'page': Praktikum23LayoutBuilder(),
      },
      {
        'title': 'Grid Adaptive',
        'subtitle': 'Responsive grid system',
        'icon': Icons.grid_view_rounded,
        'color': Colors.teal,
        'page': Praktikum24GridAdaptive(),
      },
      {
        'title': 'Mini Project',
        'subtitle': 'Aplikasi Responsif Full',
        'icon': Icons.auto_awesome_mosaic_rounded,
        'color': Colors.pink,
        'page': Praktikum25MiniProject(),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FE), // Warna background sangat lembut
      body: CustomScrollView(
        slivers: [
          // Header Modern (SliverAppBar)
          SliverAppBar.large(
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Modul Praktikum',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigo.shade100, const Color(0xFFF8F9FE)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),

          // Menu Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final item = menuItems[index];
                  return ModernMenuCard(
                    title: item['title'],
                    subtitle: item['subtitle'],
                    icon: item['icon'],
                    color: item['color'],
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => item['page']),
                    ),
                  );
                },
                childCount: menuItems.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}

// Widget Card Kustom agar Kode Lebih Rapi
class ModernMenuCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const ModernMenuCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon Wrapper
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(icon, color: color, size: 32),
                ),
                const Spacer(),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}