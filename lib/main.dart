import 'package:flutter/material.dart';
import 'screens/scanner_screen.dart';

void main() => runApp(ProductScannerApp());

class ProductScannerApp extends StatelessWidget {
  const ProductScannerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Scanner',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: ScannerScreen(),
    );
  }
}
