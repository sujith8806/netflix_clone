import 'package:flutter/material.dart';

class CommingSoonCard extends StatelessWidget {
  CommingSoonCard({super.key, required this.url, required this.title});
  String url;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
  
      height: 385,
      width: 375,
      child: Column(
        children: [
          Container(
            width: 375,
            height: 195,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(url))),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  Text(
                    'Remind Me',
                    style: TextStyle(color: Colors.white, fontSize: 11.13),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 11.13),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          Text(title)
        ],
      ),
    );
  }
}
