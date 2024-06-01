import 'package:flutter/material.dart';

class CheckboxesScreens extends StatefulWidget {
  const CheckboxesScreens({super.key});

  @override
  State<CheckboxesScreens> createState() => _CheckboxesScreensState();
}

class _CheckboxesScreensState extends State<CheckboxesScreens> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox"),
      ),
      body: Column(
        children: [
          Checkbox(
            value: isChecked1,
            activeColor: const Color(0xff983BF6),
            // isError: true,
            onChanged: (newBool) {
              setState(() {
                isChecked1 = newBool!;
              });
            },
          ),
          Checkbox(
            value: isChecked2,
            activeColor: const Color(0xffD32F2F),
            isError: true,
            onChanged: (newBool) {
              setState(() {
                isChecked2 = newBool!;
              });
            },
          ),
        ],
      ),
    );
  }
}
