import 'package:flutter/material.dart';
import 'package:paywell/widgets/build_timeline_item.dart';
import 'package:paywell/widgets/pay_button.dart';
import 'package:paywell/widgets/restore_button.dart';

class AnnualPlanTab extends StatelessWidget {
  const AnnualPlanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildTimelineItem(
            title: 'Today',
            description:
                'Unlock our library of meditations, sleep sounds, and more.',
            icon: Icons.lock,
          ),
          BuildTimelineItem(
            title: 'In 12 days',
            description:
                "We'll send you a reminder that your trial is ending soon.",
            icon: Icons.notifications,
          ),
          BuildTimelineItem(
            title: 'In 14 days',
            description: "You'll be charged, cancel anytime before.",
            icon: Icons.star,
            isLast: true,
          ),

          const SizedBox(height: 10),
          RestoreButton(onPressed: () {}, buttonText: 'Restore purchase'),
          const SizedBox(height: 20),
          PayButton(onPressed: () {}, buttonText: "Try for \$0.00"),
        ],
      ),
    );
  }
}
