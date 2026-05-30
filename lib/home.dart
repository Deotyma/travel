import 'package:flutter/material.dart';
import 'city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 199, 11, 168),
        leading: const Icon(Icons.home),
        title: const Text('My Trip'),
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[CityCard()],
        ),
      ),
    );
  }
}
