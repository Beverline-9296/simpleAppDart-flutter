import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> fruits = [
      {'name': 'Apple', 'image': 'https://example.com/apple.jpg'},
      {'name': 'Banana', 'image': 'https://example.com/banana.jpg'},
      {'name': 'Cherry', 'image': 'https://example.com/cherry.jpg'},
      {'name': 'Grapes', 'image': 'https://example.com/grapes.jpg'},
      {'name': 'Orange', 'image': 'https://example.com/orange.jpg'},
      {'name': 'Peach', 'image': 'https://example.com/peach.jpg'},
      {'name': 'Pineapple', 'image': 'https://example.com/pineapple.jpg'},
      {'name': 'Strawberry', 'image': 'https://example.com/strawberry.jpg'},
      {'name': 'Watermelon', 'image': 'https://example.com/watermelon.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Fruits')),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(fruits[index]['image']!),
            title: Text(fruits[index]['name']!),
            onTap: () {
              // Handle item selection
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(fruits[index]['name']!),
                  content: Image.network(fruits[index]['image']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
