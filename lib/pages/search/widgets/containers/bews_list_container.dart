import 'package:brews/models/brewery.dart';
import 'package:brews/pages/search/widgets/shared/brewery_item.dart';
import 'package:flutter/material.dart';

class BrewsListContainer extends StatelessWidget {
  final List<Brewery> brews;

  const BrewsListContainer({Key key, this.brews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: brews.length,
        itemBuilder: (BuildContext context, int index) {
          return BreweryItem(
            brewery: brews[index],
          );
        });
  }
}
