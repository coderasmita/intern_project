import 'package:flutter/material.dart';
import 'package:intern_project/components/buttons/secondary_button.dart';

import '../components/buttons/primary_button.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xff983BF6),
                  child: Text(
                    "A",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text("Title"),
                subtitle: Text("Descriptions"),
                trailing: Icon(Icons.more_vert),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/Group_2608523.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Title"),
                    const Text("Descriptions"),
                    const Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim.",
                    ),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
