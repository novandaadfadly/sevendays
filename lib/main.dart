import 'package:flutter/material.dart';
import 'package:sevendays/pages/first_pricing.dart';
import 'package:sevendays/pages/first_random.dart';
import 'package:sevendays/pages/first_splash.dart';

void main() => runApp(Sevendays());
class Sevendays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPricing(),
    );
  }
}