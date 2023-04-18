import 'package:flutter/material.dart';
import 'package:lab_manager/screens/login/component/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String? textField;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    this.textField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
        child: Container(
      alignment: Alignment.center,
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          hintText: textField,
          hintStyle: Theme.of(context).textTheme.labelMedium,
          border: InputBorder.none,
          // contentPadding: EdgeInsets.only(bottom: size.height * 0.016),
          // suffixIcon: Icon(
          //   Icons.visibility,
          //   color: Colors.black,
          // ),
        ),
      ),
    ));
  }
}
