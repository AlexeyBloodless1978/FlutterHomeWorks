import 'package:flutter/material.dart';
import 'my_home_page.dart';

void main() {
 runApp( MyApp());
}


class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Пример GridView')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Text('Элемент $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my Grid View Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const MyHomePage(),
    );
  }
}



/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Примеры',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Примеры GridView'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle('1. GridView.count - простая сетка'),
          _buildSimpleGridView(),

          const SizedBox(height: 30),
          _buildSectionTitle('2. GridView.builder - динамическая сетка'),
          _buildGridViewBuilder(),

          const SizedBox(height: 30),
          _buildSectionTitle('3. GridView.extent - по максимальной ширине'),
          _buildGridViewExtent(),

          const SizedBox(height: 30),
          _buildSectionTitle('4. GridView с изображениями'),
          SizedBox(
            height: 200,
            child: _buildGridViewWithImages(),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  // 1. GridView.count - фиксированное количество колонок
  Widget _buildSimpleGridView() {
    return SizedBox(
      height: 180,
      child: GridView.count(
        crossAxisCount: 3, // 3 колонки
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(8),
        children: List.generate(9, (index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.accents[index % Colors.accents.length],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // 2. GridView.builder - для динамических данных
  Widget _buildGridViewBuilder() {
    final List<Map<String, dynamic>> items = [
      {'name': 'Дом', 'icon': Icons.home, 'color': Colors.blue},
      {'name': 'Работа', 'icon': Icons.work, 'color': Colors.green},
      {'name': 'Школа', 'icon': Icons.school, 'color': Colors.orange},
      {'name': 'Магазин', 'icon': Icons.shopping_cart, 'color': Colors.purple},
      {'name': 'Больница', 'icon': Icons.local_hospital, 'color': Colors.red},
      {'name': 'Парк', 'icon': Icons.park, 'color': Colors.teal},
      {'name': 'Кафе', 'icon': Icons.coffee, 'color': Colors.brown},
      {'name': 'Спорт', 'icon': Icons.sports_soccer, 'color': Colors.indigo},
      {'name': 'Кино', 'icon': Icons.movie, 'color': Colors.pink},
      {'name': 'Музыка', 'icon': Icons.music_note, 'color': Colors.deepOrange},
    ];

    return SizedBox(
      height: 250,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // 4 колонки
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8, // соотношение ширины к высоте
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: item['color'].withOpacity(0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item['icon'],
                  size: 40,
                  color: item['color'],
                ),
                const SizedBox(height: 8),
                Text(
                  item['name'],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: item['color'],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // 3. GridView.extent - элементы с максимальной шириной
  Widget _buildGridViewExtent() {
    return SizedBox(
      height: 150,
      child: GridView.extent(
        maxCrossAxisExtent: 100, // Максимальная ширина элемента
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(8),
        children: List.generate(12, (index) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple.shade300,
                  Colors.purple.shade700,
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  // 4. GridView с изображениями
  Widget _buildGridViewWithImages() {
    final List<String> imageUrls = [
      'https://via.placeholder.com/150/FF5733/FFFFFF?text=1',
      'https://via.placeholder.com/150/C70039/FFFFFF?text=2',
      'https://via.placeholder.com/150/900C3F/FFFFFF?text=3',
      'https://via.placeholder.com/150/581845/FFFFFF?text=4',
      'https://via.placeholder.com/150/FFC300/000000?text=5',
      'https://via.placeholder.com/150/DAF7A6/000000?text=6',
    ];

    return GridView.builder(
      scrollDirection: Axis.horizontal, // Горизонтальная прокрутка
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 2 строки
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.7,
      ),
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(
                      Icons.broken_image,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}

*/
