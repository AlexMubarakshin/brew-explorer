import 'package:brews/presentation/pages/brewery_details/widgets/brewery_info.dart';
import 'package:flutter/material.dart';

import 'package:brews/models/brewery.dart';

class BreweryDetailsPage extends StatelessWidget {
  final Brewery brewery;

  const BreweryDetailsPage({
    Key key,
    this.brewery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(brewery.name ?? 'Brewery details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BreweryInfo(
              name: brewery.name,
              address: brewery.fullAddress,
              phone: brewery.phone,
              website: brewery.websiteUrl,
            ),
          ],
        ),
      ),
    );
  }
}
