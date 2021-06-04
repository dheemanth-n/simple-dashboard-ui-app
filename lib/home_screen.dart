import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //to get size
    var size = MediaQuery.of(context).size;

    //style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 62, 62, 1));

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/images/top_header.png"))),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png"),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "John Richardo",
                              style: TextStyle(
                                  fontFamily: "Montserrat Medium",
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              "410141041",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Montserrat Medium"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904425.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Personal Data",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                                   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904565.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Course Schedule",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                                   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904527.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Attendence Recap",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                                   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904437.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Study Result",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                                   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904235.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Course Booking",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          ),
                                   Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)
                            ),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  "https://image.flaticon.com/icons/svg/1904/1904221.svg",
                                  height: 128,
                                ),
                                Text(
                                  "Course Plan",
                                  style: cardTextStyle,
                                )
                              ],
                            ),
                          )
                        ],
                        crossAxisCount: 2),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
