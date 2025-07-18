import 'package:flutter/material.dart';

class PayButton extends StatelessWidget {
  const PayButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });
  final Function() onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ), // This was the m
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Manrope',
          ),
        ),
      ),
    );
  }
}
