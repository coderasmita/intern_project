import 'package:flutter/material.dart';

class RadiobuttonScreen extends StatefulWidget {
  const RadiobuttonScreen({super.key});

  @override
  State<RadiobuttonScreen> createState() => _RadiobuttonScreenState();
}

class _RadiobuttonScreenState extends State<RadiobuttonScreen> {
  String selectedOption = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button"),
      ),
      body: Row(
        children: [
          Radio(
              value: "",
              groupValue: selectedOption,
              onChanged: (value) {
                setState(() {
                  selectedOption = "";
                });
              })
        ],
      ),
    );
  }
}
