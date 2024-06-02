import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BadgesScreen extends StatelessWidget {
  const BadgesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Badges"),
      ),
      body: Center(
        child: Badge(
          backgroundColor: AppColors.primaryColor,
          smallSize: 20,
          largeSize: 20,
          label: Text('1'),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: AppColors.primaryColor,
              )),
        ),
      ),
    );
  }
}
