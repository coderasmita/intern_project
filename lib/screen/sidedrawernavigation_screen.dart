import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SidedrawernavigationScreen extends StatelessWidget {
  const SidedrawernavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/image_profile.png"),
              radius: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Full Name",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "asmitakoirala2022@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff6E7191),
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  shape: const StadiumBorder(),
                  tileColor:
                      index == 0 ? const Color(0xffC4BFFE) : Colors.transparent,
                  leading: const Icon(Icons.computer),
                  title: const Text(
                    "label",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color(0xff202020),
                    ),
                  ),
                  trailing: const Text(
                    "100+",
                    style: TextStyle(
                      color: Color(0xff202020),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Sidedrawer Navigation"),
      ),
    );
  }
}
