import 'package:flutter/material.dart';

class RestoreButton extends StatelessWidget {
  const RestoreButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });
  final Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Center(
        child: Text(buttonText, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
