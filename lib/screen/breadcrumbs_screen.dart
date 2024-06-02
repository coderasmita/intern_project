import 'package:flutter/material.dart';
import 'package:intern_project/constants/app_colors.dart';
import 'package:intern_project/models/breadcrumb_model.dart';

class BreadcrumbsScreen extends StatelessWidget {
  const BreadcrumbsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breadcrumbs"),
      ),
      body: SizedBox(
        height: 50,
        child: ListView.separated(
          itemCount: BreadcrumbModel.breadcrumList.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(
            width: 30,
            height: 10,
            child: Divider(
              height: 10,
              thickness: 2,
              color: index == 0 ? AppColors.primaryColor : Colors.black,
            ),
          ),
          itemBuilder: (context, index) {
            var data = BreadcrumbModel.breadcrumList[index];
            return BreadcrumbColumn(
              icons: data.icondata,
              text: data.text,
              color: index == 0 || index == 1 ? AppColors.primaryColor : null,
            );
          },
        ),
      ),
    );
  }
}

class BreadcrumbColumn extends StatelessWidget {
  const BreadcrumbColumn({
    super.key,
    required this.icons,
    required this.text,
    this.color,
  });

  final IconData icons;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icons,
          color: color ?? Colors.black,
        ),
        Text(
          text,
          style: TextStyle(
            color: color ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
