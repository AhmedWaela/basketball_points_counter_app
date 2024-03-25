import 'package:flutter/material.dart';
import 'Screens/home_View.dart';

void main() {
  runApp(
    const PointsCounter(),
  );
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
