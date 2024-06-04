import 'package:flutter/material.dart';

class ButtonGenerics extends StatefulWidget {
  final String? title;
  final Color? titleColor;
  final Color? borderColor;
  final VoidCallback? onPressed;
  const ButtonGenerics(
      {super.key,
      this.title,
      this.titleColor,
      this.onPressed,
      this.borderColor});

  @override
  State<ButtonGenerics> createState() => _ButtonGenericsState();
}

class _ButtonGenericsState extends State<ButtonGenerics> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: widget.borderColor ?? Colors.yellow)),
      onPressed: widget.onPressed,
      child: Text(
        widget.title ?? "Entrar",
        style: TextStyle(color: widget.titleColor ?? Colors.black),
      ),
    );
  }
}
