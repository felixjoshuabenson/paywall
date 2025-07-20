import 'package:flutter/material.dart';
import 'package:paywell/theme.dart';
import 'package:paywell/widgets/build_timeline_item.dart';
import 'package:paywell/widgets/pay_button.dart';
import 'package:paywell/widgets/restore_button.dart';

class PlanTab extends StatelessWidget {
  final List<Map<String, dynamic>> timelineItems;
  final String payButtonText;
  final VoidCallback onPayPressed;
  final VoidCallback onRestorePressed;

  const PlanTab({
    super.key,
    required this.timelineItems,
    required this.payButtonText,
    required this.onPayPressed,
    required this.onRestorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppSpacing.responsivePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...timelineItems.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return BuildTimelineItem(
              title: item['title'],
              description: item['description'],
              icon: item['icon'],
              isLast: index == timelineItems.length - 1,
            );
          }),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          RestoreButton(
            onPressed: onRestorePressed,
            buttonText: 'Restore purchase',
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          PayButton(onPressed: onPayPressed, buttonText: payButtonText),
        ],
      ),
    );
  }
}
