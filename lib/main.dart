import 'package:flutter/material.dart';
import './menu.dart';
import 'package:intl/intl.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int dayIndex = 2;
  String dayNum =" ";
  List<String> dayText = [];
  
  final List<Map<String, Object>> diet = [
    {
      'day': '0',
      'menu': [
        {'meal': 'Breakfast', 'food': '0'},
        {'meal': 'Lunch', 'food': '0'},
        {'meal': 'Dinner', 'food': '0'},
      ],
    },
    {
      'day': '1',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk no sugar'},
        {'meal': 'Lunch', 'food': 'Chicken and 1 type veggie'},
        {'meal': 'Dinner', 'food': 'Soup, 1 slice of toast and cheese'},
      ],
    },
    {
      'day': '2',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Bannana with 2% milk no sugar'},
        {'meal': 'Lunch', 'food': 'Chicken and 1 type veggie'},
        {'meal': 'Dinner', 'food': 'Soup, 1 slice of toast and cheese'},
      ],
    },
  ];

void GetDate(){
    var now = new DateTime.now();
    var formatter = new DateFormat('yMMMMd');
    String formattedDate = formatter.format(now);
  diet[dayIndex]['day'] = formattedDate;
  dayNum = dayIndex.toString();
  dayText = ['Day',dayNum];
}

  

  @override
  Widget build(BuildContext context) {
    
    GetDate();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Column(
          children: [
            Text(dayText.join(" ")),
            Text(diet[dayIndex]['day'].toString()),
            ...(diet[dayIndex]['menu'] as List<Map<String, Object>>).map((menu) {
              return Menu(menu["meal"], menu['food']); //Text(menu["meal"].toString());
              //Text(menu["food"].toString());
            }).toList()
          ],
        ),
      ),
    );
  }
}
