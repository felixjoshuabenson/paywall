import 'package:flutter/material.dart';

class Subvalues {
  static const List<String> tabItems = ['Annual', 'Monthly'];
  static String getSubtitle(int tabIndex) {
    return tabIndex == 0
        ? 'First 14 days free, then \$69.99 (\$5.83/month)'
        : 'First 7 days free, then \$12.99 / month';
  }

  static const List<Map<String, dynamic>> annualTimelineItems = [
    {
      'title': 'Today',
      'description':
          'Unlock our library of meditations, sleep sounds, and more.',
      'icon': Icons.lock,
    },
    {
      'title': 'In 12 days',
      'description':
          "We'll send you a reminder that your trial is ending soon.",
      'icon': Icons.notifications,
    },
    {
      'title': 'In 14 days',
      'description': "You'll be charged, cancel anytime before.",
      'icon': Icons.star,
    },
  ];
  static const List<Map<String, dynamic>> monthlyTimelineItems = [
    {
      'title': 'Today',
      'description':
          'Unlock our library of meditations, sleep sounds, and more.',
      'icon': Icons.lock,
    },
    {
      'title': 'In 5 days',
      'description':
          "We'll send you a reminder that your trial is ending soon.",
      'icon': Icons.notifications,
    },
    {
      'title': 'In 7 days',
      'description': "You'll be charged, cancel anytime before.",
      'icon': Icons.star,
    },
  ];
}
