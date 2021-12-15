import 'package:flutter/material.dart';

class CustomeTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  const CustomeTextFormField({ Key? key, 
  required this.controller, 
  required this.isPassword, 
  required this.hintText 
  }) : super(key: key);

  @override
  _CustomeTextFormFieldState createState() => _CustomeTextFormFieldState();
}

class _CustomeTextFormFieldState extends State<CustomeTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPassword,
        decoration:  InputDecoration(
          border:const OutlineInputBorder(),
          hintText: widget.hintText,
        ),
      ),
    );
  }
}