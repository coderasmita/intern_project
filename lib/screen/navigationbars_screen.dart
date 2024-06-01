import 'package:flutter/material.dart';

class NavigationbarsScreen extends StatefulWidget {
  const NavigationbarsScreen({super.key});

  @override
  State<NavigationbarsScreen> createState() => _NavigationbarsScreenState();
}

class _NavigationbarsScreenState extends State<NavigationbarsScreen> {
  List<Widget> screens = [
    const Text("Home"),
    const Text("Settings"),
    const Text("Cart"),
    const Text("Notifications"),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NavigationbarsScreen"),
      ),
      body: screens[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        unselectedLabelStyle: const TextStyle(color: Colors.blue),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
