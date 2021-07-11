import 'package:flutter/material.dart';

class Days extends StatelessWidget {
  final Function UpdateMenu;
  final dayNumber;
  final dayDate;
  var dayText;
  
  Days(this.dayNumber, this.dayDate, this.UpdateMenu);
  
  //void UpdateMenu(){
  //  dayIndex = dayText[1];
  //  print (dayIndex);
  //}  
  //String dayText = ['Day', dayNumber.toString()];
  

  @override
  Widget build(BuildContext context) {
  dayText = ['Day', dayNumber];
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(dayText.join(" ")),
            Text(dayDate),
          ],
        ),
        onPressed: () => UpdateMenu(dayText[1]),
      ),
    );
  }
}
