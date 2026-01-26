import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final Function(String) onSearch;

  const SearchField({Key? key, required this.onSearch}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController _cityController;

  @override
  void initState() {
    super.initState();
    _cityController = TextEditingController();
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  void _performSearch() {
    final city = _cityController.text.trim();

    if (city.isNotEmpty) {
      widget.onSearch(city);
    } else {
      widget.onSearch('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _cityController,
                decoration: const InputDecoration(
                  hintText: 'Введите город...',
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Colors.blue),
                ),
                onSubmitted: (_) => _performSearch(),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(8),
            child: IconButton(
              onPressed: _performSearch,
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
