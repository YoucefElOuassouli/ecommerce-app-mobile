import 'package:buy_it/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;
  String _errorMessage(String str) {
    if (str == 'Enter your name') return 'Name is empty !';
    if (str == 'Enter your email') return 'Email is empty !';
    if (str == 'Enter your password') return 'Password is empty !';
    return "all good";
  }

  CustomTextField(
      {@required this.onClick, @required this.icon, @required this.hint});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage(hint);
            // ignore: missing_return
          }
          return "Welcome";
        },
        onSaved: onClick,
        obscureText: hint == 'Enter your password' ? true : false,
        cursorColor: kMainColor,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
            icon,
            color: kMainColor,
          ),
          filled: true,
          fillColor: kSecondaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
        ),
      ),
    );
  }
}
