import 'package:flutter/material.dart';

class AvatarsusericonsScreen extends StatelessWidget {
  const AvatarsusericonsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatars & User Icons"),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CirclesAvatars(
            assetImage: AssetImage(
              "assets/image_profile.png",
            ),
          ),
          CirclesAvatars(
            child: Text('OK'),
          ),
          CirclesAvatars(
            child: Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}

class CirclesAvatars extends StatelessWidget {
  const CirclesAvatars({
    super.key,
    this.child,
    this.assetImage,
  });

  final Widget? child;
  final AssetImage? assetImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xff983BF6),
      backgroundImage: assetImage,
      radius: 30,
      child: child,
    );
  }
}
