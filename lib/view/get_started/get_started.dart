import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/utlils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
          title: Container(
            height: 37.2,
            width: 138,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(ImageConstants.LOGO))),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: GridView.builder(
            itemCount: Dummydb.userData.length + 1,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 75),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 121,
                crossAxisSpacing: 22,
                mainAxisSpacing: 25,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return index < Dummydb.userData.length
                  ? InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          )),
                      child: Column(
                        children: [
                          Image(
                              height: 92,
                              width: 100,
                              image: AssetImage(
                                  Dummydb.userData[index]['imagePath'])),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            Dummydb.userData[index]['userName'],
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.25),
                          )
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Image(
                            height: 92,
                            width: 100,
                            image: AssetImage(ImageConstants.ADD_BUTTON)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Add User',
                          style:
                              TextStyle(color: Colors.white, fontSize: 13.25),
                        )
                      ],
                    );
            },
          ),
        ));
  }
}
