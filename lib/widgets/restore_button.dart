import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywell/theme.dart';

class RestoreButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final bool isLoading;

  const RestoreButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: buttonText,
      child: TextButton(
        onPressed: isLoading ? null : onPressed,
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: CircularProgressIndicator(
                    color: AppColors.subtitleText,
                    strokeWidth: 2.w,
                  ),
                )
              : Text(buttonText, style: AppTextStyles.restoreText),
        ),
      ),
    );
  }
}
