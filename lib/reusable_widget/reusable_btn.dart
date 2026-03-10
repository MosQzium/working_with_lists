import 'package:flutter/material.dart';

class ReusableBtn extends StatelessWidget {
  final String title;
  final Color color;
  final Color textColor;
  final VoidCallback function;

  const ReusableBtn({
    super.key,
    required this.title,
    required this.color,
    required this.function,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(12.0),
        backgroundColor: WidgetStatePropertyAll(color),
      ),
      child: Text(title, style: TextStyle(color: textColor)),
    );
  }
}
