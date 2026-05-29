import 'package:flutter/material.dart';

void main() => runApp(const DymaTrip());

class DymaTrip extends StatelessWidget {
  const DymaTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Dyma Trip'),
          actions: const <Widget>[Icon(Icons.more_vert)],
        ),
        body: const Text('Dyma'),
      ),
    );
  }
}
