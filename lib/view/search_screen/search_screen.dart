import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/view/search_screen/widgets/search_screen_card.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            TextFormField(
              cursorColor: Colors.white,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xff424242),
                filled: true,
                hintText: 'Search for a show movie,game etc..',
                hintStyle: TextStyle(color: Color(0xffC4C4C4)),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                  color: Color(0xffC4C4C4),
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Color(0xffC4C4C4),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.75,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => SearchScreenCard(
                    title: Dummydb.titleList[index],
                    url: Dummydb.imageList2[index]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                itemCount: Dummydb.imageList2.length),
          ],
        ),
      ),
    );
  }
}
