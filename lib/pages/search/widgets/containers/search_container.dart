import 'package:brews/pages/search/widgets/shared/search_input_widget.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final ValueChanged<String> _onSubmit;
  const SearchContainer({Key key, final ValueChanged<String> onSubmit})
      : _onSubmit = onSubmit,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
            SearchInput(hintText: 'Enter a brewery name', onSubmitted: _onSubmit),
      ),
    );
  }
}
