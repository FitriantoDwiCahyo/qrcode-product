import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/router.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                context.goNamed(
                  Routes.detailProduct,
                  pathParameters: {'id': '${index + 1}'},
                );
              },
              leading: CircleAvatar(
                child: Text('${index + 1}'),
              ),
              title: Text('Nama product'),
            );
          },
        ));
  }
}
