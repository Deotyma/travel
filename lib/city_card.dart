import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Image.asset('assets/images/paris.jpg', fit: BoxFit.cover),
      ),
    );
  }
}
