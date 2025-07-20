import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paywell/theme.dart';

class TimelineConstants {
  static final double iconSize = 20.w;
  static final double lineWidth = 8.w;
  static final double lineHeight = 48.h;
  static final double lastLineHeight = 28.h;
}

class BuildTimelineItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final bool isLast;

  const BuildTimelineItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: '$title: $description',
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                padding: AppSpacing.resPadding(context),
                decoration: const BoxDecoration(
                  color: AppColors.iconCircle,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  size: TimelineConstants.iconSize,
                  color: AppColors.iconLine,
                ),
              ),
              Container(
                width: TimelineConstants.lineWidth,
                height: isLast
                    ? TimelineConstants.lastLineHeight
                    : TimelineConstants.lineHeight,
                color: isLast ? AppColors.iconLastLine : AppColors.iconDarkLine,
              ),
            ],
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.timelineTitle),
                SizedBox(height: 8.h),
                Text(description, style: AppTextStyles.timelineDescription),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
