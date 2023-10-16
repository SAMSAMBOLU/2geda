import 'package:flutter/material.dart';

class Rowdisplay extends StatelessWidget {
  const Rowdisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          child: ClipOval(
            child:Column(
              children: [
                Image(image: AssetImage("assets/images/headsetwoman.jpg"))
              ],
            )
            ,
          ),
        ),
        CircleAvatar(
          child: ClipOval(
            child: Image(image: AssetImage("assetName")),
          ),
        ),
        CircleAvatar(
          child: ClipOval(
            child: Image(image: AssetImage("assetName")),
          ),
        ),
      ],
    );
  }
}