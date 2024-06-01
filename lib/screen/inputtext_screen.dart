import 'package:flutter/material.dart';

class InputtextScreen extends StatelessWidget {
  const InputtextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Text"),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Placeholder Text... ",
                errorText: "This is an Error Text",
                suffixIcon: Icon(Icons.chevron_right),
                hintStyle: TextStyle(
                  color: Color(0xffC7C7C7),
                ),
                filled: true,
                fillColor: Color(0xffF5F5F5),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff8E8E8E),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff983BF6),
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}
