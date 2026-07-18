import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final double? width;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.width,
    this.controller,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: widget.obscureText ? isHidden : false,
        decoration: InputDecoration(
          hintText: widget.hintText,

          suffixIcon: widget.obscureText
              ? IconButton(
                icon: Icon(isHidden
                  ?Icons.visibility_off
                  :Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    isHidden = !isHidden;
                  });
                },
              )
            :null,

          //
          filled: true,
          fillColor: const Color(0xFFFFA743).withValues(alpha: 0.05),


          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: Color(0xFFFFA743),
              width: 1,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: const BorderSide(
              color: Color(0xFFFFA743),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}