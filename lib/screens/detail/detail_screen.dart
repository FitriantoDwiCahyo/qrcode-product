import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(this.id,{super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Product'),
      ),
      body: Center(
        child: Text('Product $id'),
      ),
    );
  }
}
