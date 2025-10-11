// Universidad de la Costa - Computación Móvil - Flutter Application 11:
import 'package:flutter/material.dart';

final healthySnacks = [
  {
    'name': 'almonds',
    'price': 3,
    'image': 'almonds.jpg',
    'color': Colors.brown,
  },
  {
    'name': 'pistachios',
    'price': 4,
    'image': 'pistachios.jpg',
    'color': Colors.green,
  },
  {
    'name': 'cashews',
    'price': 5,
    'image': 'cashews.jpg',
    'color': Colors.amber,
  },
  {
    'name': 'hazelnuts',
    'price': 4,
    'image': 'hazelnuts.jpg',
    'color': Colors.deepOrange,
  },
  {
    'name': 'walnuts',
    'price': 6,
    'image': 'walnuts.jpg',
    'color': Colors.brown,
  },
  {
    'name': 'pecans',
    'price': 6,
    'image': 'pecans.jpg',
    'color': Colors.redAccent,
  },
];

class HealthySnacksPage extends StatelessWidget {
  const HealthySnacksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Healthy Snacks Page')),
      body: GestureDetector(
        onTap: () {
          print('Go to other page...');
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 190,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: healthySnacks
                .map(
                  (e) => makeSnackContainer(
                    e['name'].toString(),
                    e['image'].toString(),
                    e['price'].toString(),
                    e['color'] as Color,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  // Custom Snack Container
  Widget makeSnackContainer(
    String name,
    String image,
    String price,
    Color color,
  ) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset('assets/images/$image', width: 80),
          Text(name, style: const TextStyle(fontSize: 23)),
          Text('\$$price', style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
