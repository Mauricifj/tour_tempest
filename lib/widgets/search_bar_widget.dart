import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.onChanged,
    this.icon = Icons.search,
    this.hint = '',
  });

  final Function(String searchTerm) onChanged;
  final IconData icon;
  final String hint;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SearchBar(
      constraints: BoxConstraints.tightFor(
        width: width * 0.85,
        height: 35,
      ),
      leading: Icon(icon),
      hintText: hint,
      onChanged: onChanged,
    );
  }
}
