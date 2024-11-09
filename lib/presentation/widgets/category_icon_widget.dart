import 'package:flutter/material.dart';

class CategoryIconWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color bgColor;

  CategoryIconWidget({
    required this.imagePath,
    required this.title,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
