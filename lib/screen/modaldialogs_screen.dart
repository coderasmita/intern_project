import 'package:flutter/material.dart';
import 'package:intern_project/components/buttons/primary_button.dart';
import 'package:intern_project/components/buttons/secondary_button.dart';

class ModaldialogsScreen extends StatefulWidget {
  const ModaldialogsScreen({super.key});

  @override
  State<ModaldialogsScreen> createState() => _ModaldialogsScreenState();
}

class _ModaldialogsScreenState extends State<ModaldialogsScreen> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modal Dialogs"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Row(
                      children: [
                        Icon(Icons.info_outline),
                        SizedBox(width: 10),
                        Text("Title"),
                        Spacer(),
                        Icon(Icons.warning)
                      ],
                    ),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: [
                          const Text("Descriptions"),
                          const Text(
                            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = !isChecked;
                                  });
                                },
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SecondaryButton(
                            height: 40,
                            title: 'Cancel',
                            width: 100,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          PrimaryButton(
                            height: 40,
                            width: 100,
                            title: 'Confirm',
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ],
                  );
                });
          },
          child: const Text(
            "Open",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
