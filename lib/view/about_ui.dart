import 'package:flutter/material.dart';

class AboutUi extends StatefulWidget {
  const AboutUi({super.key});

  @override
  State<AboutUi> createState() => _AboutUiState();
}

class _AboutUiState extends State<AboutUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40.0),
            Image.asset(
              'assets/images/logo.png',
              width: 150.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
            Text(
              'คำนวณหาค่าดัฃนีมวลกาย (BMI)',
            ),
            SizedBox(height: 10.0),
            Text(
              'คำนวณหาค่าแคลอรี่ที่ร่างกายต้องการในแต่ละวัน (BMR)',
            ),
            SizedBox(height: 120.0),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/4/47/Logosau-02.png',
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15.0),
            Text(
              'Developed by SUPPERNIN SAU 2026',
            ),
          ],
        ),
      ),
    );
  }
}
