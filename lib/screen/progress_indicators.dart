import 'package:flutter/material.dart';

class ProgressIndicators extends StatelessWidget {
  const ProgressIndicators({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    value: 0.3,
                    color: Colors.green,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("30%"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    value: 0.5,
                    color: Colors.green,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("20%"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    value: 0.75,
                    color: Colors.blue,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("70%"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 110,
                  width: 110,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                    value: 1,
                    color: Colors.red,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("80%"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
