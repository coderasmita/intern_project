import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intern_project/components/buttons/text_buttons.dart';

class TooltipsScreen extends StatefulWidget {
  const TooltipsScreen({super.key});

  @override
  State<TooltipsScreen> createState() => _TooltipsScreenState();
}

class _TooltipsScreenState extends State<TooltipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tooltips"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Tooltip(
                  message: "Tooltip message",
                  child: Text(
                    "Title",
                    style: TextStyle(
                      color: Color(0xff202020),
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Tooltip(
                  message: "Tooltip message",
                  child: Text(
                    "Supporting line text lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(
                      color: Color(0xff6C7E95),
                      fontSize: 15,
                    ),
                  ),
                ),
                const Tooltip(
                  message: "Tooltip message",
                  child: Text(
                    "Supporting line text lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(
                      color: Color(0xff6C7E95),
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    TextButtons(title: "Action", onPressed: () {}),
                    TextButtons(title: "Action", onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
