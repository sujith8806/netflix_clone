import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leadingWidth: 0,
        backgroundColor: Colors.black,
        title: Text(
          'Smart Downloads',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introducing downloads for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.63,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                ],
              ),
            ),
            SizedBox(height: 20),
            CircleAvatar(
              radius: 88,
              backgroundColor: Colors.grey,
            ),
            SizedBox(height: 20),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'SETUP',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 50,
              width: 240,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Find something to download',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
