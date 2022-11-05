import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthTextField extends StatefulWidget {
  AuthTextField({
    Key? key,
    required this.fieldName,
    this.textInputType,
    this.textInputAction = TextInputAction.next,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  final String fieldName;
  final TextInputType? textInputType;
  TextInputAction? textInputAction;
  String? Function(String?)? validator;
  void Function(String)? onChanged;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool obscureText;
  TextEditingController? controller;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  final FocusNode _focusNode = FocusNode();
  Color? _color;

  @override
  void initState() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _color = const Color(0xFF7165e3).withOpacity(0.25);
        });
      } else {
        setState(() {
          _color = null;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 4, 15, 0),
      child: TextFormField(
        onChanged: widget.onChanged,
        controller: widget.controller,
        validator: widget.validator,
        scrollPadding: const EdgeInsets.all(50),
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction,
        focusNode: _focusNode,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          focusColor: _color,
          fillColor: _color,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color(0xFF7165e3),
              width: 1,
              // style: BorderStyle.none,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          hintText: widget.fieldName,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}
