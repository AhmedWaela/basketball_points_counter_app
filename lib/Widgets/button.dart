import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.text, required this.function});
  final String text;
  final Function function;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){
        setState(() {
          widget.function();
        });
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.orange,
        minimumSize: const Size(150, 50),
      ),
      child:  Text(widget.text,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'font')),
    );
  }
}
