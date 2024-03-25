import "package:flutter/material.dart";
import 'button.dart';

class Team extends StatelessWidget {
  const Team({super.key, required this.teamName, required this.number, required this.function1, required this.function2, required this.function3});
  final String teamName;
  final String number;
  final Function function1;
  final Function function2;
  final Function function3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Text(teamName,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    fontFamily: 'font')),
            Text(
              number,
              style: const TextStyle(
                fontSize: 90,
              ),
            ),
            Button(text: 'Add 1 point', function: function1),
            Button(text: 'Add 2 point ', function: function2),
            Button(text: 'Add 3 point', function: function3),
          ],
        ));
  }
}





