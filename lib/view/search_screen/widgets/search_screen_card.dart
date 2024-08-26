import 'package:flutter/material.dart';

class SearchScreenCard extends StatelessWidget {
  SearchScreenCard({super.key, required this.title, required this.url});
  String url;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff424242),
      child: Row(
        children: [
          Image(
            image: NetworkImage(url),
            height: 76,
            width: 146,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14.72),
          ),
          Spacer(),
          Icon(
            Icons.play_circle_outline_rounded,
            color: Colors.white,
            size: 25,
          )
        ],
      ),
    );
  }
}
