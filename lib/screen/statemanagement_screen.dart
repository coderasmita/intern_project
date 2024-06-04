import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateManagementScreen extends StatefulWidget {
  const StateManagementScreen({super.key});

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  var isVisible = true;
  var textFieldText = "";
  var imageUrl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child:
                      Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  textFieldText = value;
                });
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "State Management $textFieldText",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(
                      () {
                        isVisible = !isVisible;
                      },
                    );
                  },
                  child:
                      Icon(isVisible ? Icons.visibility : Icons.visibility_off),
                ),
                border: OutlineInputBorder(),
              ),
              // onChanged: (value) {
              //   setState(() {
              //     textFieldText = value;
              //   });
              // },
            ),
          ),
          // Image.asset(
          //   "assets/image_profile.png ",
          // ),
        ],
      ),
    );
  }
}
