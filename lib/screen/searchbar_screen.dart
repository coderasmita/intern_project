import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchbarScreen extends StatelessWidget {
  const SearchbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Bar"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Color(0xffF5F5F5),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff8E8E8E),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff8E8E8E),
              ),
            ),
            hintText: "Search .....",
            errorText: "This is an Error Text",
            hintStyle: TextStyle(
              color: Color(0xffC7C7C7),
            ),
          ),
        ),
      ),
    );
  }
}
