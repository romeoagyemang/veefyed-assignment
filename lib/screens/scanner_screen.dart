import 'package:flutter/material.dart';
import 'dart:async';
import 'result_screen.dart';
import '../widgets/loading_indicator.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  bool _isScanning = false;

  void _simulateScan() {
    setState(() => _isScanning = true);

    Timer(Duration(seconds: 2), () {
      setState(() => _isScanning = false);
      bool isVerified = DateTime.now().second % 2 == 0;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            isVerified: isVerified,
            productName: isVerified ? "Organic Juice" : "Unknown Item",
            ingredients:
                isVerified ? ["Water", "Fruit Extract", "Vitamin C"] : [],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scan Product')),
      body: Center(
        child: _isScanning
            ? LoadingIndicator()
            : ElevatedButton.icon(
                icon: Icon(Icons.camera_alt),
                label: Text('Scan Product'),
                onPressed: _simulateScan,
              ),
      ),
    );
  }
}
