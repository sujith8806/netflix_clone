import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/view/more_screen/widgets/username_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 38,
          ),
          Row(
            children: List.generate(
                Dummydb.userData.length + 1,
                (index) => index < Dummydb.userData.length
                    ? Padding(
                        padding: const EdgeInsets.only(right: 9),
                        child: UsernameCard(
                            height: index == 0 ? 68 : 60,
                            width: index == 0 ? 73 : 65,
                            onCardTap: () => () {},
                            image: Dummydb.userData[index]['imagePath'],
                            name: Dummydb.userData[index]['userName']),
                      )
                    : Column(
                        children: [
                          Container(
                            height: 60,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("")
                        ],
                      )),
          ),
        ],
      ),
    );
  }
}
