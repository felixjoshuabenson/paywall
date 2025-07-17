import 'package:flutter/material.dart';
import 'package:paywell/src/widgets/build_timeline_item.dart';

class MonthlyPlanTab extends StatelessWidget {
  const MonthlyPlanTab({super.key});

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
            title: 'In 5 days',
            description:
                "We'll send you a reminder that your trial is ending soon.",
            icon: Icons.notifications,
          ),

          BuildTimelineItem(
            title: 'In 7 days',
            description: "You'll be charged, cancel anytime before.",
            icon: Icons.star,
            isLast: true,
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Center(
              child: const Text(
                'Restore purchase',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007BFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: const Text(
                'Try for \$0.00',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Manrope',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
