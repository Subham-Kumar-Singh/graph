import 'package:flutter/material.dart';

class MyButtonWidget extends StatefulWidget {
  @override
  _MyButtonWidgetState createState() => _MyButtonWidgetState();
}

class _MyButtonWidgetState extends State<MyButtonWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButton(0, "24H"),
        buildButton(1, "7D"),
        buildButton(2, "14D"),
        buildButton(3, "30D"),
      ],
    );
  }

  Widget buildButton(int index, String text) {
    bool isSelected = index == selectedIndex;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      style: ButtonStyle(
        backgroundColor: isSelected
            ? MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 22, 24, 36))
            : MaterialStateProperty.all<Color>(Colors.transparent),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey,
        ),
      ),
    );
  }
}
