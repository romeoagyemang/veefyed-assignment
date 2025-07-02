import 'package:flutter/material.dart';
import '../widgets/product_info.dart';

class ResultScreen extends StatelessWidget {
  final bool isVerified;
  final String productName;
  final List<String> ingredients;

  const ResultScreen({
    super.key,
    required this.isVerified,
    required this.productName,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scan Result')),
      body: ProductInfo(
        isVerified: isVerified,
        productName: productName,
        ingredients: ingredients,
      ),
    );
  }
}
