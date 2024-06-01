import 'package:flutter/material.dart';

class ToggleswitchesScreen extends StatefulWidget {
  const ToggleswitchesScreen({super.key});

  @override
  State<ToggleswitchesScreen> createState() => _ToggleswitchesScreenState();
}

class _ToggleswitchesScreenState extends State<ToggleswitchesScreen> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Switches"),
      ),
      body: Column(
        children: [
          Switch(
            activeColor: const Color(0xff983BF6),
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Switch(
            activeColor: const Color(0xff983BF6),
            value: isSwitched,
            // thumbIcon: Icon(Icons.fork_right),
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
