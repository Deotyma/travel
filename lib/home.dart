import 'package:flutter/material.dart';
import 'city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {'name': 'Paris', 'image': 'assets/images/paris.jpg', 'isFavorite': false},
    {'name': 'Nice', 'image': 'assets/images/nice.jpg', 'isFavorite': false},
    {'name': 'Lyon', 'image': 'assets/images/lyon.jpg', 'isFavorite': false},
    {
      'name': 'Marseille',
      'image': 'assets/images/marseille.jpg',
      'isFavorite': false,
    },
  ];

  void toggleFavorite(int index) {
    setState(() {
      cities[index]['isFavorite'] = !cities[index]['isFavorite'];
    });
  }

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
          children: cities
              .map(
                (city) => CityCard(
                  name: city['name'],
                  image: city['image'],
                  isFavorite: city['isFavorite'],
                  toggleFavorite: () => toggleFavorite(cities.indexOf(city)),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
