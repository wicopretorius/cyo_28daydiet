import 'package:flutter/material.dart';
import './menu.dart';
import './days.dart';
import 'package:intl/intl.dart';
import './custom_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
   return  _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int dayIndex =0;
  String dayNum = " ";
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
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Chicken and 1 type of vegetable.'},
        {'meal': 'Dinner', 'food': 'Soup with 1 slice of toast and cheese.'},
      ],
    },
    {
      'day': '2',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': 'Fish with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '2 Eggs with onion and tomato mix.'},
      ],
    },
    {
      'day': '3',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': '1 Potato and 1 type of vegetable.'},
        {'meal': 'Dinner', 'food': '3 Types of fruit.'},
      ],
    },
    {
      'day': '4',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Pasta with onion and tomato mix.'},
        {'meal': 'Dinner', 'food': '6 Provitas with cheese and 1 fruit.'},
      ],
    },
    {
      'day': '5',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Fish with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '1 Type of vegetable.'},
      ],
    },
    {
      'day': '6',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': '1 Potato and 1 type of vegetable.'},
        {'meal': 'Dinner','food': 'Soup with 1 slice of toast and marmite/bovril.'},
      ],
    },
    {
      'day': '7',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Chicken with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '2 Eggs with tomato and 1 slice toast.'},
      ],
    },
    {
      'day': '8',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Tuna salad with light salad dressing'},
        {'meal': 'Dinner', 'food': '3 Types of fruit.'},
      ],
    },
    {
      'day': '9',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': '1 Potato and 1 type of vegetable.'},
        {'meal': 'Dinner', 'food': '2 Eggs with tomato and 1 slice toast.'},
      ],
    },
    {
      'day': '10',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Soup with 4 provitas and cheese.'},
        {'meal': 'Dinner', 'food': '1 Type of vegetable.'},
      ],
    },
    {
      'day': '11',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Fish with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '3 Types of fruit.'},
      ],
    },
    {
      'day': '12',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': 'Fruit salad.'},
        {'meal': 'Dinner', 'food': 'Red meat or fish with vegetables.'},
      ],
    },
    {
      'day': '13',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': '1 Type of vegetable.'},
        {'meal': 'Dinner', 'food': 'Pasta with onion and tomato mix.'},
      ],
    },
    {
      'day': '14',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': 'Chicken with salad or vegetables.'},
        {'meal': 'Dinner', 'food': 'Yogurt and 2 types of fruit.'},
      ],
    },
    {
      'day': '15',
      'menu': [
        {'meal': 'Breakfast', 'food': '1 Slice toast and tomato.'},
        {'meal': 'Lunch', 'food': 'Only cucumber and carrots'},
        {'meal': 'Dinner', 'food': 'Soup with 1 slice of toast and cheese.'},
      ],
    },
    {
      'day': '16',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Tuna salad with light salad dressing'},
        {'meal': 'Dinner', 'food': 'Fruit salad.'},
      ],
    },
    {
      'day': '17',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Fish with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '1 Type of vegetable.'},
      ],
    },
    {
      'day': '18',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': '1 Potato and 1 type of vegetable.'},
        {'meal': 'Dinner','food': 'Soup with 1 slice of toast and marmite/bovril.'},
      ],
    },
    {
      'day': '19',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Chicken with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '2 Eggs with tomato and 1 slice toast.'},
      ],
    },
    {
      'day': '20',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Tuna salad with light salad dressing'},
        {'meal': 'Dinner', 'food': '3 Types of fruit.'},
      ],
    },
    {
      'day': '21',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': '1 Potato and 1 type of vegetable.'},
        {'meal': 'Dinner', 'food': '2 Eggs with tomato and 1 slice toast.'},
      ],
    },
    {
      'day': '22',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Soup with 4 provitas and cheese.'},
        {'meal': 'Dinner', 'food': '1 Type of vegetable.'},
      ],
    },
    {
      'day': '23',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Yogurt and 1 type of fruit.'},
        {'meal': 'Lunch', 'food': 'Fish with salad or vegetables.'},
        {'meal': 'Dinner', 'food': '3 Types of fruit.'},
      ],
    },
    {
      'day': '24',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': 'Fruit salad.'},
        {'meal': 'Dinner', 'food': 'Red meat or fish with vegetables.'},
      ],
    },
    {
      'day': '25',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': '1 Type of vegetable.'},
        {'meal': 'Dinner', 'food': 'Pasta with onion and tomato mix.'},
      ],
    },
    {
      'day': '26',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Stewed dried fruit.'},
        {'meal': 'Lunch', 'food': 'Chicken with salad or vegetables.'},
        {'meal': 'Dinner', 'food': 'Yogurt and 2 types of fruit.'},
      ],
    },
    {
      'day': '27',
      'menu': [
        {'meal': 'Breakfast', 'food': '1 Slice toast and tomato.'},
        {'meal': 'Lunch', 'food': 'Only cucumber and carrots'},
        {'meal': 'Dinner', 'food': 'Soup with 1 slice of toast and cheese.'},
      ],
    },
    {
      'day': '28',
      'menu': [
        {'meal': 'Breakfast', 'food': 'Cereal with 2% milk, no sugar.'},
        {'meal': 'Lunch', 'food': 'Tuna salad with light salad dressing'},
        {'meal': 'Dinner', 'food': 'Fruit salad.'},
      ],
    },
  ];

 void UpdateMenu(String menuNo){ 
   setState(() {
     dayIndex = int.parse(menuNo);
   });
   print (dayIndex);
 }

  void LoadDates() {
    int x = 0;
    String formattedDate = "";
    var formatter = new DateFormat('yMMMMd');
    var today = new DateTime.now();
    var beginDate = today.add(Duration(days: x));

    formattedDate = formatter.format(beginDate);
    diet[1]['day'] = formattedDate;

    for (int days = 2; days < diet.length; days++) {
      var nextday = beginDate.add(Duration(days: (days - 1)));
      formattedDate = formatter.format(nextday);
      diet[days]['day'] = formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    LoadDates();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Create Your Own - 28 Day Diet'),
            ),
            body: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 4,
                    child: ListView(
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        for (int x = 1; x < diet.length; x++)
                          Column(children: [
                            Days(x.toString(), diet[x]['day'].toString(), UpdateMenu),
                          ])
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      flex: 7,
                      child: Column(
                         children: [
                          ...(diet[dayIndex]['menu']
                                  as List<Map<String, Object>>)
                              .map((menu) {
                            return Menu(menu["meal"], menu['food']);
                          }).toList()
                        ],
                      )),
                ],
              ),
            )));
  }
}