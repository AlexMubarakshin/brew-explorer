import 'package:flutter/material.dart';

import 'package:brews/models/brewery.dart';

class BreweryItem extends StatelessWidget {
  final Brewery brewery;

  const BreweryItem({Key key, this.brewery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            brewery.name ?? 'NO NAME',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              brewery.city ?? 'NO CITY',
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
