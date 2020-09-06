import 'package:flutter/material.dart';

import 'package:brews/utils/launch.dart';

class BreweryInfo extends StatelessWidget {
  final String name;
  final String address;
  final String phone;
  final String website;

  const BreweryInfo({
    Key key,
    @required this.name,
    @required this.address,
    this.phone,
    this.website,
  }) : super(key: key);

  void onPhoneTap() {
    launch("tel://$phone").catchError((err) {
      print(err);
    });
  }

  void onWebsiteTap() {
    launch(website).catchError((err) {
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Text(
              address,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          if (phone != null)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: GestureDetector(
                onTap: onPhoneTap,
                child: Text(
                  phone,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 37, 45, 155),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          if (website != null)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: GestureDetector(
                onTap: onWebsiteTap,
                child: Text(
                  website,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 37, 45, 155),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
