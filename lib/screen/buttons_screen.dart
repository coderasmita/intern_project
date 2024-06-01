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
            title: 'Button1',
            icon: const Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
            onPressed: () {
              print('hello1');
            },
          ),
          const PrimaryButton(
            title: 'Button2',
            onPressed: null,
          ),
          const SizedBox(height: 10),
          SecondaryButton(
            title: 'ok',
            onPressed: () {},
          ),
          const SecondaryButton(
            title: 'lala',
            onPressed: null,
          ),
          const SizedBox(
            height: 10,
          ),
          const TextButtons(
            title: "Button 1",
            onPressed: null,
          ),
          TextButtons(
            title: "Button 2",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
