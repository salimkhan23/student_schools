import 'package:flutter/material.dart';

class MInputUser extends StatefulWidget {
  const MInputUser({
    super.key,
    this.ispassword = false,
    this.hintText,
  });

  final bool ispassword;
  final String? hintText;

  @override
  State<MInputUser> createState() => _MInputUserState();
}

class _MInputUserState extends State<MInputUser> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPassword,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.ispassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                icon: showPassword
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off))
            : null,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
