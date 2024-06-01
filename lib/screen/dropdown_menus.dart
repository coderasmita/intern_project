import 'package:flutter/material.dart';

class DropdownMenus extends StatefulWidget {
  const DropdownMenus({super.key});

  @override
  State<DropdownMenus> createState() => _DropdownMenusState();
}

class _DropdownMenusState extends State<DropdownMenus> {
  String defaultvalue = 'List Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Menus"),
      ),
      body: ListView(
        children: [
          DropdownButton(
              value: defaultvalue,
              isExpanded: true,
              menuMaxHeight: 300,
              items: const [
                DropdownMenuItem(
                  value: "List Item 1",
                  child: Text("List Item 1"),
                ),
                DropdownMenuItem(
                  value: "List Item 2",
                  child: Text("List Item 2"),
                ),
                DropdownMenuItem(
                  value: "List Item 3",
                  child: Text("List Item 3"),
                ),
                DropdownMenuItem(
                  value: "List Item 4",
                  child: Text("List Item 4"),
                ),
                DropdownMenuItem(
                  value: "List Item 5",
                  child: Text("List Item 5"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  defaultvalue = value.toString();
                });
              })
        ],
      ),
    );
  }
}
