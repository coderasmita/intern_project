import 'package:flutter/material.dart';

class BreadcrumbModel {
  final IconData icondata;
  final String text;

  BreadcrumbModel({required this.icondata, required this.text});

  static List<BreadcrumbModel> breadcrumList = [
    BreadcrumbModel(icondata: Icons.home, text: 'Home'),
    BreadcrumbModel(icondata: Icons.shopping_bag, text: 'Shop'),
    BreadcrumbModel(icondata: Icons.home, text: 'Home'),
    BreadcrumbModel(icondata: Icons.notification_add, text: 'Notifications'),
  ];
}
