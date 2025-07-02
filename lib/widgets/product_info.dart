import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  final bool isVerified;
  final String productName;
  final List<String> ingredients;

  const ProductInfo({
    super.key,
    required this.isVerified,
    required this.productName,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productName,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            isVerified ? "✅ Product Verified" : "❌ Unknown Product",
            style: TextStyle(
              color: isVerified ? Colors.green : Colors.red,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "Ingredients:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          ...ingredients.map((ing) => Text("- $ing")),
        ],
      ),
    );
  }
}
