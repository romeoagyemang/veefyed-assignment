import 'dart:math';
import '../models/product.dart';

class MockScanner {
  static final List<Product> _mockProducts = [
    Product(
      id: 'P001',
      name: 'Organic Apple Juice',
      brand: 'Nature\'s Best',
      status: 'Product Verified',
      ingredients: [
        'Organic Apple Juice',
        'Natural Vitamin C',
        'Citric Acid',
        'Natural Flavoring'
      ],
      imageUrl: '',
      isVerified: true,
    ),
    Product(
      id: 'P002',
      name: 'Premium Green Tea',
      brand: 'Tea Master',
      status: 'Product Verified',
      ingredients: [
        'Organic Green Tea Leaves',
        'Natural Jasmine Extract',
        'Vitamin E',
        'Natural Antioxidants'
      ],
      imageUrl: '',
      isVerified: true,
    ),
    Product(
      id: 'P003',
      name: 'Whole Grain Bread',
      brand: 'Baker\'s Choice',
      status: 'Product Verified',
      ingredients: [
        'Whole Wheat Flour',
        'Water',
        'Yeast',
        'Salt',
        'Honey',
        'Olive Oil'
      ],
      imageUrl: '',
      isVerified: true,
    ),
    Product(
      id: 'UNKNOWN',
      name: 'Unknown Product',
      brand: 'N/A',
      status: 'Unknown Product',
      ingredients: [
        'Product not found in database',
        'Please try scanning again or contact support'
      ],
      imageUrl: '',
      isVerified: false,
    ),
  ];

  static Future<Product> scanProduct(String imagePath) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 3));

    // Random chance to return unknown product (20% chance)
    final random = Random();
    if (random.nextDouble() < 0.2) {
      return _mockProducts.last; // Return unknown product
    }

    // Return random verified product
    final index = random.nextInt(_mockProducts.length - 1);
    return _mockProducts[index];
  }

  static Future<List<Product>> getAllProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockProducts.where((product) => product.isVerified).toList();
  }
}
