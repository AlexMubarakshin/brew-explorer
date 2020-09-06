import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title, subtitle;
  final GestureTapCallback onTap;

  const ListItem({
    Key key,
    @required this.title,
    this.subtitle,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 0, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  color: Color.fromARGB(255, 25, 1, 52),
                  fontSize: 16,
                ),
              ),
              if (subtitle != null)
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 108, 88, 121),
                      fontSize: 14,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
