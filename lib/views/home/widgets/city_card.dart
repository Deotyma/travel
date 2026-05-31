import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String image;
  final bool isFavorite;
  final VoidCallback toggleFavorite;

  const CityCard({
    super.key,
    required this.name,
    required this.image,
    required this.isFavorite,
    required this.toggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              child: InkWell(onTap: toggleFavorite),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          isFavorite ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
