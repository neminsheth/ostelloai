import 'package:flutter/material.dart';

class FAQWidget extends StatefulWidget {
  @override
  _FAQWidgetState createState() => _FAQWidgetState();
}

class _FAQWidgetState extends State<FAQWidget> {
  final List<Map<String, String>> faqs = [
    {
      'question': 'Why should you partner with Ostello?',
      'answer': 'Ostello enables you to get 60% more revenue, 10x new Students and boost your brand visibility by providing insights to improve your business',
    },
    {
      'question': 'Why should you partner with Ostello?',
      'answer': 'Answer 2',
    },
    {
      'question': 'Why should you partner with Ostello?',
      'answer': 'Answer 3',
    },
    {
      'question': 'Why should you partner with Ostello?',
      'answer': 'Answer 4',
    },
  ];

  // Keeping track of expanded/collapsed state for each FAQ
  List<bool> expandedList = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: faqs.asMap().entries.map((entry) {
        int index = entry.key;
        var faq = entry.value;

        return Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          margin: EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: Color(0xFFF8F8FF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.zero,
              bottomLeft: Radius.zero,
              bottomRight: Radius.zero,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ExpansionTile(
            title: Text(
              faq['question']!,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  faq['answer']!,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
            trailing: Icon(
              expandedList[index]
                  ? Icons.remove_circle_outline
                  : Icons.add_circle_outline,
              color: Colors.deepPurple,
            ),
            collapsedBackgroundColor: Color(0xFFF8F8FF),
            backgroundColor: Color(0xFFF8F8FF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onExpansionChanged: (expanded) {
              setState(() {
                expandedList[index] = expanded; // Update expansion state for this FAQ
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
