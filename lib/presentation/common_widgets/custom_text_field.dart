import 'package:flutter/material.dart';
import 'package:flutter_production_app/presentation/common_widgets/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    required this.icon,
    this.validator,
  });
  final Function(String) onChanged;
  final String labelText;
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextFormField(
        validator: validator,
        autocorrect: false,
        cursorColor: kiwiColor,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            borderSide: BorderSide(
              color: kiwiColor,
            ),
          ),
          labelText: labelText,
          hintText: hintText,
          iconColor: kiwiColor,
          hintStyle: const TextStyle(color: kiwiColor),
          labelStyle: const TextStyle(color: kiwiColor),
          prefixIcon: Icon(icon, color: kiwiColor),
        ),
      ),
    );
  }
}
