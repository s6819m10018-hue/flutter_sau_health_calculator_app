import 'package:flutter/material.dart';
import 'package:flutter_sau_health_calculator_app/view/about_ui.dart';
import 'package:flutter_sau_health_calculator_app/view/bmi_ui.dart';
import 'package:flutter_sau_health_calculator_app/view/bmr_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
class HomeUi extends StatefulWidget {
  const HomeUi({super.key});
 
  @override
  State<HomeUi> createState() => _HomeUiState();
}
 
class _HomeUiState extends State<HomeUi> {
 
  //ตัวแปรเก็บ index ที่เลือก
  int selecIndexItem = 1 ;
 
  // ตัวแปรเก็ลบหน้าจอย่อยที่จะเอามาแสดงที่ body
List showInbody = [
  BmiUi(),     //0
  AboutUi(),   //1
  BmrUi(),    
];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          'Body Health Calculator',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: showInbody[selecIndexItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (paramValue){
          setState(() {
            selecIndexItem = paramValue;
          });
        },
        currentIndex: selecIndexItem,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.deepOrange[100],
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'BMI',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label:  'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.heartCircleBolt,
            ),
            label: 'BMR',
          ),
        ],
      ),
    );
  }
}
