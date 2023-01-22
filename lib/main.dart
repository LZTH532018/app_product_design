import 'package:flutter/material.dart';
import 'package:app_product_design/view/products.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vista del producto',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 52, 55, 61),
          title: const Center(
            child: Text('Vista del producto'),
            ),
        ),
        body: const Center(
          child: productView(),
        ),
      ),
    );
  }
}