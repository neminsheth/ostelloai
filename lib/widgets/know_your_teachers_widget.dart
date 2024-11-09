import 'package:flutter/material.dart';

class KnowYourTeachersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final teachers = [
      {
        'name': 'Teacher Name',
        'subject': 'Physics',
        'image': 'assets/images/teacher.png',
      },
      {
        'name': 'Name',
        'subject': 'Mathematics',
        'image': 'assets/images/teacher2.png',
      },
      {
        'name': 'Teacher Name',
        'subject': 'Chemistry',
        'image': 'assets/images/teacher.png',
      },
      {
        'name': 'Name',
        'subject': 'Biology',
        'image': 'assets/images/teacher2.png',
      },
    ];

    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: teachers.length,
        itemBuilder: (context, index) {
          final teacher = teachers[index];
          return Container(
            width: 120,
            margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                      width: 1,
                    ),
                    image: DecorationImage(
                      image: AssetImage(teacher['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  teacher['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4),
                Text(
                  teacher['subject']!,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
