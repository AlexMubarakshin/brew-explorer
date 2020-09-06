import 'package:flutter/material.dart';

import 'package:brews/presentation/routes/router.gr.dart';

import 'package:brews/models/brewery.dart';

import 'package:brews/presentation/pages/search/widgets/shared/brewery_item.dart';

class BrewsListContainer extends StatelessWidget {
  final List<Brewery> brews;

  final Function(Brewery) onBreweryTap;

  const BrewsListContainer({
    Key key,
    this.brews,
    this.onBreweryTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: brews.length,
        itemBuilder: (BuildContext context, int index) {
          return BreweryItem(
            brewery: brews[index],
            onTap: onBreweryTap,
          );
        });
  }
}
