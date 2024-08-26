import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utlils/image_constants.dart';
import 'package:netflix_clone/view/comming_soon/comming_soon.dart';
import 'package:netflix_clone/view/download_screen/download_screen.dart';
import 'package:netflix_clone/view/more_screen/more_screen.dart';
import 'package:netflix_clone/view/search_screen/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List screens = [
    home(),
    SearchScreen(),
    CommingSoon(),
    DownloadScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xff8C8787),
          backgroundColor: Color(0xff121212),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            _currentIndex = value;

            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                label: 'Comming Soon'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_outlined), label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
          ]),
      backgroundColor: Colors.black,
      body: screens[_currentIndex],
    );
  }
}

class home extends StatelessWidget {
  const home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            CarouselSlider(

                items: List.generate(
                    3,
                    (index) => Image(
                        height: 415,
                        width: 424,
                        fit: BoxFit.cover,
                        image: NetworkImage(Dummydb.imageList1[index]))),
                options: CarouselOptions(
                  height: 415,
                  autoPlay: true,
                  
                )),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 47, left: 27, right: 27),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            width: 53,
                            height: 57,
                            image: AssetImage(ImageConstants.LOGO_ICON)),
                        Text(
                          'TV Shows',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.2,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.2,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.2,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(ImageConstants.DATE_16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '#2 in Nigeria Today',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.72,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
              height: 415,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black])),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 46, vertical: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(color: Colors.white, fontSize: 13.46),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 110.63,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffC4C4C4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Play',
                      style: TextStyle(
                        fontSize: 20.46,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                  Text(
                    'Info',
                    style: TextStyle(color: Colors.white, fontSize: 13.46),
                  )
                ],
              ),
            ],
          ),
        ),
        CustomPosterBuilder(
          title: 'Previews',
          imageList: Dummydb.imageList1,
          isCircle: true,
        ),
        CustomPosterBuilder(
          title: 'Continue for watching Emenalo',
          imageList: Dummydb.imageList3,
        ),
        CustomPosterBuilder(
          title: 'Popular on Netflix',
          imageList: Dummydb.imageList1,
        ),
        CustomPosterBuilder(
          title: 'Trending Now',
          imageList: Dummydb.imageList3,
        ),
        CustomPosterBuilder(
          title: 'Top 10 in Nigeria Today',
          imageList: Dummydb.imageList1,
        ),
        CustomPosterBuilder(
          imageList: Dummydb.imageList1,
          title: 'My List',
        ),
        CustomPosterBuilder(
          imageList: Dummydb.imageList2,
          title: 'African Movies',
        ),
        CustomPosterBuilder(
          imageList: Dummydb.imageList3,
          title: 'Nollywood movies & TV',
        ),
        CustomPosterBuilder(
          title: 'Netflix Orginal',
          imageList: Dummydb.imageList1,
          height: 300,
          width: 160,
        ),
        CustomPosterBuilder(
          title: 'Watcg it again',
          imageList: Dummydb.imageList2,
        ),
        CustomPosterBuilder(
          title: 'TV Thriller & Mysteries',
          imageList: Dummydb.imageList3,
        ),
        CustomPosterBuilder(
          title: 'US TV Shows',
          imageList: Dummydb.imageList2,
        ),
      ],
    );
  }
}

class CustomPosterBuilder extends StatelessWidget {
  CustomPosterBuilder(
      {super.key,
      required this.title,
      this.isCircle = false,
      this.imageList = const [],
      this.height = 177,
      this.width = 102});

  final String title;
  final double width;
  final double height;
  bool isCircle;
  List imageList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: height,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: isCircle ? width : height,
                  width: width,
                  decoration: BoxDecoration(
                      shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(imageList[index]))),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 8,
                  ),
              itemCount: imageList.length),
        )
      ],
    );
  }
}
