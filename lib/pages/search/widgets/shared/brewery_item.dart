import 'package:brews/models/brewery.dart';
import 'package:flutter/material.dart';

class BreweryItem extends StatelessWidget {
  final Brewery brewery;

  const BreweryItem({Key key, this.brewery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          brewery.name,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          brewery.city,
          textAlign: TextAlign.left,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
