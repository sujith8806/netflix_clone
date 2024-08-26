import 'package:flutter/material.dart';

class UsernameCard extends StatelessWidget {
  UsernameCard(
      {super.key,
      required this.image,
      required this.name,
      this.onCardTap,
      this.height,
      this.width});
  final String image;
  final String name;
  final void Function()? onCardTap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Image(height: height, width: width, image: AssetImage(image)),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
