import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//app theme colors and text styles
class AppColors {
  static const Color background = Color(0xFF0A0E23); // Dark Navy
  static const Color subtitleText = Color(0xFFB0B3C1); // Light gray
  static const Color whiteColor = Colors.white;
  static const Color iconCircle = Color(0xFFFFD600); // Yellow
  static const Color iconLine = Color(0xFF3E3F51); // Dark line
  static const Color iconDarkLine = Color(0xFF5D4037);
  static const Color iconLastLine = Color(
    0xFF0E0A09,
  ); // Dark line for last item
  static const Color buttonBlue = Color(0xFF007BFF); // Call to action button
  static const Color tabUnselected = Color(0xFF888CA3);
  static const Color tabBackground = Color(0xFF1B1E38);
}

class AppTextStyles {
  static TextStyle title = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'Manrope',
    color: AppColors.whiteColor,
  );

  static TextStyle subtitle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
    color: AppColors.subtitleText,
  );

  static TextStyle tabLabel = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
  );

  static TextStyle timelineTitle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'Manrope',
    color: AppColors.whiteColor,
  );

  static TextStyle timelineDescription = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
    color: AppColors.subtitleText,
  );

  static TextStyle button = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Manrope',
    color: Colors.white,
  );

  static TextStyle restoreText = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
    color: AppColors.subtitleText,
  );
}

class AppSpacing {
  static EdgeInsets responsivePadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return EdgeInsets.all(width * 0.05);
  }

  static EdgeInsets resPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return EdgeInsets.all(width * 0.025);
  }
}
