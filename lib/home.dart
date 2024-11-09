import 'package:flutter/material.dart';
import 'package:ostelloai/widgets/batch_schedule_widget.dart';
import 'package:ostelloai/widgets/faq_widget.dart';
import 'package:ostelloai/widgets/know_your_teachers_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'NEET DROPPER BATCH',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Image and Academy Info
                _buildHeaderSection(),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Batch Includes Section
                      _buildBatchIncludes(),

                      SizedBox(height: 16),

                      // About Section
                      _buildAboutSection(),

                      SizedBox(height: 16),

                      // Batch Schedule Section
                      Text("Batch Schedule",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      BatchScheduleWidget(),

                      SizedBox(height: 16),

                      // Know The Teachers Section
                      Text("Know The Teachers",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      KnowYourTeachersWidget(),

                      SizedBox(height: 16),

                      // Schedules Section
                      Text("Schedules",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      _buildSchedulesSection(),

                      SizedBox(height: 16),

                      // FAQ Section
                      Text("For more understanding, visit FAQs",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                      SizedBox(height: 8),
                      FAQWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Price Section (Fixed at the bottom)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _buildPriceSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Column(
      children: [
        SizedBox(height: 10,),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/students.jpeg',
            width: 370,
            height: 161,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/vr_logo.png'),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'VR Academy',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.verified, color: Colors.green, size: 20),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.green, size: 16),
                      SizedBox(width: 4),
                      Text('4.5'),
                    ],
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text('Follow', style: TextStyle(
                    color: Colors.white
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBatchIncludes() {
    final items = [
      {'icon': Icons.calendar_today, 'text': 'Duration: 23 Sep 2024 - 30 June 2024'},
      {'icon': Icons.access_time, 'text': 'Validity: Till The Exams 2025'},
      {'icon': Icons.play_circle_outline, 'text': 'Recorded lectures'},
      {'icon': Icons.assignment, 'text': 'DPPs and Test With Solutions'},
      {'icon': Icons.people, 'text': 'Online counseling at Vidyapeeth Centers'},
      {'icon': Icons.phone, 'text': 'One to One Telephonic PTM based on SPD'},
      {'icon': Icons.support_agent, 'text': 'Physical support and helpdesk at Vidyapeeth offline Centers'},
      {'icon': Icons.book, 'text': 'Subjects: Physics, Chemistry & Maths'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'This Batch Includes:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        ...items.map((item) => Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Icon(item['icon'] as IconData, color: Color(0xFFECBE38), size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  item['text'] as String,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        )).toList(),
      ],
    );
  }

  Widget _buildAboutSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const Row(
          children:[
            Icon(Icons.info_outline, color: Colors.black),
            SizedBox(width: 7),
            Text(
            'About',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Most shocking news most shocking news most shocking news most shocking news most shocking news most shocking news. Most shocking news most shocking news most shocking news most shocking news most shocking news most shocking news.',
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),

      ],
    );
  }

  Widget _buildSchedulesSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(Icons.picture_as_pdf, color: Colors.red),
        title: Text('Schedules PDF'),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }

  Widget _buildPriceSection() {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '₹5,000',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '₹10,000',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '50% OFF',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            //height: 31.35,
            //width: 159,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Join',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 75, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
