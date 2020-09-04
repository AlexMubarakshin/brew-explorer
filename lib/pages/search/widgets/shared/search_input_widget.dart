import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final String _hintText;
  final ValueChanged<String> _onSubmitted;

  const SearchInput({
    Key key,
    @required String hintText,
    @required ValueChanged<String> onSubmitted,
  })  : _hintText = hintText,
        _onSubmitted = onSubmitted,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(8, 0, 0, 0),
        borderRadius: BorderRadius.all(
            Radius.circular(10)
            ),
      ),
      padding: const EdgeInsets.all(8),
      child: TextField(
        onSubmitted: _onSubmitted,
        style: const TextStyle(
          fontSize: 17,
        ),
        decoration: InputDecoration(
            hintText: _hintText,
            border: InputBorder.none,
            suffixIcon: const Icon(Icons.search),
            suffixStyle:
                const TextStyle(color: Color.fromARGB(255, 142, 142, 147)),
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 142, 142, 147))),
      ),
    );
  }
}
