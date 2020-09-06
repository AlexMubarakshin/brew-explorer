import 'package:brews/presentation/widgets/list_item.dart';
import 'package:flutter/material.dart';

import 'package:brews/models/brewery.dart';

class BreweryItem extends StatelessWidget {
  final Brewery brewery;

  final Function(Brewery) onTap;

  const BreweryItem({Key key, this.brewery, this.onTap}) : super(key: key);

  void _onTapHandler() {
    onTap(brewery);
  }

  @override
  Widget build(BuildContext context) {
    return ListItem(
      onTap: _onTapHandler,
      title: brewery.name ?? 'No name',
      subtitle: brewery.fullAddress,
    );
  }
}
