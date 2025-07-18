import 'package:flutter/material.dart';

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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Circle Icon with Vertical Line
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 20, color: Colors.black),
            ),
            if (!isLast)
              Container(width: 8, height: 48, color: Colors.brown.shade800),
            if (isLast)
              Container(
                width: 8,
                height: 28,
                color: const Color.fromARGB(255, 14, 10, 9),
              ),
          ],
        ),
        const SizedBox(width: 12),
        // Text Block
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Manrope',
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'Manrope',
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
