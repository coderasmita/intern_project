import 'package:flutter/material.dart';

import '../components/buttons/primary_button.dart';
import '../components/buttons/secondary_button.dart';
import '../components/buttons/text_buttons.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Design System"),
      ),
      body: Column(
        children: [
          PrimaryButton(
            title: 'Button',
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const PrimaryButton(
            title: 'Button 2',
            onPressed: null,
          ),
          const SizedBox(height: 10),
          SecondaryButton(
            title: 'Button',
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          const SecondaryButton(
            title: 'Button',
            onPressed: null,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextButtons(
            title: "Button ",
            onPressed: null,
          ),
          TextButtons(
            title: "Button ",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
