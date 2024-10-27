import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('你好,Flutter'),
        backgroundColor: Colors.blue,
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (ctx, index) {
          return Image.network(
            'https://picsum.photos/200/300?random=$index',
            fit: BoxFit.cover,
          );
        });
  }
}
