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
    return TextField(
      onSubmitted: _onSubmitted,
      decoration: InputDecoration(
        hintText: _hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: const Icon(Icons.search),
      ),
    );
  }
}
