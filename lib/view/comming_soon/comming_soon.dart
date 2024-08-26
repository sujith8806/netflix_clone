import 'package:flutter/material.dart';
import 'package:netflix_clone/dummydb.dart';
import 'package:netflix_clone/view/comming_soon/widgets/comming_soon_card.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leadingWidth: 60,
        titleSpacing: 0,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.red,
            child: Icon(
              size: 17,
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.91,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Color(0xff424242),
            child: Row(
              children: [
                Image(
                    height: 55,
                    width: 113,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/03b0/46eb/a8804967540bd597e8fcd70ec9b04da5?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Yf~CDhvMk4~7nvuvjWfBIjJRCBDyi1sukYbbjF6bXZcQnXNntOzJ~B6VMEcrkzI1UVvkWMyNSxqtcS6kHMG9UVTdvO~RVZG2aqPE8hugiPqNoRMXMUsZ7VKH2BkRFahhJWOc5qQn8MpVwDHnRg0m9qhZgNPaj95JOPDYXeGm~rEHQQtebiQ~4s6YJ~Na2jQs6SQoywMqK2nGWRKonXdyR6PsgJRk0tDFLHDELQO8y5VXKxR5BqHZCuM2MSXnbku7YfuY8yr5xcqmh63XWyH9WNSbO46hs0apnHWqAumVumXaBl4kWXHYb4-sxyFWXgI5skDqpozRRAhP0UGR3da2zA__')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'New Arrival',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Nov 6',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Color(0xff424242),
            child: Row(
              children: [
                Image(
                    height: 55,
                    width: 113,
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/88bd/435a/4331ba3cefa9c55fbb980bcdece21edd?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RVkVZKLKgVZ7-4Zom9ch2zKUeXm9unc0tuJyfuhjySgU2Rp3dgBm8pmEHpOQoNvgiH7M~RmlRB35pQjfpRbDvG1JjuCaTuRv3XpfHgNMHpdqx6jwV0fDGX0lpVHi50wDJP9HRKQHgcxulMdp9Y~RuS3PDr~NI3KBzK7E9bB2fCTE3PbDf7box4imyT-XnCREl-UZD~SRt0gV4s9-~d3aUfoAc-bwA1KeaLz5tJIwYwY17K~5CnKUFCzkdmWuEiMgYZ0X1cbnQd2XcO5uCaRMj9s8gq6cnHP0Oi4nm~LImx8IJNPkWtRqOhB5znlp5kjgv58JCitjuinGfU4TqPpXUA__')),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Text(
                          'New Arrival',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Nov 6',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            itemCount: Dummydb.CommingSoonCardList.length,

            
            itemBuilder: (context, index) => CommingSoonCard(url: Dummydb.CommingSoonCardList[index]['url'], title: Dummydb.CommingSoonCardList[index]['title']),)
        ],
      ),
    );
  }
}
