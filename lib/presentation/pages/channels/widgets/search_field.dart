import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';
import 'package:flutter_production_app/presentation/pages/channels/constants/texts.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.onChanged,
  });
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        cursorColor: kiwiColor,
        onChanged: onChanged,
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          labelText: search,
          hintText: searchSomeone,
          iconColor: kiwiColor,
          hintStyle: TextStyle(color: kiwiColor),
          labelStyle: TextStyle(color: kiwiColor),
          prefixIcon: Icon(Icons.search, color: kiwiColor),
        ),
      ),
    );
  }
}
