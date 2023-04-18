import 'package:flutter/material.dart';
import 'package:lab_manager/screens/login/component/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText, labelText;
  final ValueChanged<String>? onChanged;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      // textAlign: TextAlign.left,
      autofocus: true,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelMedium,
        border: InputBorder.none,
        // contentPadding: EdgeInsets.only(bottom: size.height * 0.016),
      ),
    ));
  }
}
