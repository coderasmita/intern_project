import 'package:flutter/material.dart';
import 'package:intern_project/screen/alerts_screen.dart';
import 'package:intern_project/screen/avatarsusericons_screen.dart';
import 'package:intern_project/screen/badges_screen.dart';
import 'package:intern_project/screen/breadcrumbs_screen.dart';

import 'package:intern_project/screen/buttons_screen.dart';
import 'package:intern_project/screen/cards_screen.dart';
import 'package:intern_project/screen/checkboxes_screen.dart';
import 'package:intern_project/screen/dropdown_menus.dart';
import 'package:intern_project/screen/inputtext_screen.dart';
import 'package:intern_project/screen/modaldialogs_screen.dart';
import 'package:intern_project/screen/navigationbars_screen.dart';
import 'package:intern_project/screen/progress_indicators.dart';
import 'package:intern_project/screen/radiobutton_screen.dart';
import 'package:intern_project/screen/searchbar_screen.dart';
import 'package:intern_project/screen/sidedrawernavigation_screen.dart';
import 'package:intern_project/screen/tabbar_screen.dart';
import 'package:intern_project/screen/toggleswitches_screen.dart';
import 'package:intern_project/screen/tooltips_screen.dart';

import '../components/buttons/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: ListView(
        children: [
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtonsScreen(),
                ),
              );
            },
            title: "Button Screen",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputtextScreen(),
                ),
              );
            },
            title: "Input Text",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DropdownMenus(),
                ),
              );
            },
            title: "Dropdown Menus",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckboxesScreens(),
                ),
              );
            },
            title: "CheckBoxes",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RadiobuttonScreen(),
                ),
              );
            },
            title: "Radio Button",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ToggleswitchesScreen(),
                ),
              );
            },
            title: "Toggle Switches",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NavigationbarsScreen(),
                ),
              );
            },
            title: "Navigator Bar Screen",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProgressIndicators(),
                ),
              );
            },
            title: "Progress Indicators",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabbarScreen(),
                ),
              );
            },
            title: "Tab Bar Screen",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchbarScreen(),
                ),
              );
            },
            title: "Search Bar Screen",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SidedrawernavigationScreen(),
                ),
              );
            },
            title: "Sidedrawer Navigation",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ModaldialogsScreen(),
                ),
              );
            },
            title: "Modal Dialogs",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TooltipsScreen(),
                ),
              );
            },
            title: "Tooltips",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertsScreen(),
                ),
              );
            },
            title: "Alerts",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BadgesScreen(),
                ),
              );
            },
            title: "Badges",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CardsScreen(),
                ),
              );
            },
            title: "Cards",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AvatarsusericonsScreen(),
                ),
              );
            },
            title: "Avatars & User Icons",
          ),
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BreadcrumbsScreen(),
                ),
              );
            },
            title: "Breadcrumbs",
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
