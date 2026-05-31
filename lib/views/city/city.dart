import 'package:flutter/material.dart';
import '../../models/activity.model.dart';
import '../../data/data.dart' as data;
import 'widgets/activity_card.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final List<Activity> activities = data.activities;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 199, 11, 168),
        foregroundColor: Colors.white,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        leading: const Icon(Icons.chevron_left),
        title: const Text('Paris'),
        actions: const <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: activities.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) =>
              ActivityCard(activity: activities[index]),
        ),
      ),
    );
  }
}
