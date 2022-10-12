import 'package:buddha/UI%20Helpers/bottom_bar.dart';
import 'package:buddha/UI%20Helpers/calender.dart';
import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:buddha/UI/UI%20For%20Tutors/own_profile_settings_screen_tutors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OwnProfileScreenTutors extends StatefulWidget {
  OwnProfileScreenTutors({Key? key}) : super(key: key);

  @override
  State<OwnProfileScreenTutors> createState() => _OwnProfileScreenTutorsState();
}

class _OwnProfileScreenTutorsState extends State<OwnProfileScreenTutors> {
  String commentText =
      "With hope in your heart and you'll never walk alone aoskaksokaoskaoooooooooooooossaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaasaaaaaaaaaaaaaaaaaaaaaaaaaasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(selectedIndex: 2),
      body: Container(
        // width: screenWidth,
        // height: screenlHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assetss/teacherman.jpg"),
                            fit: BoxFit.cover)),
                    width: screenWidth,
                    height: screenlHeight / 2,
                  ),
                  Positioned(
                    bottom: screenlHeight / 50,
                    right: screenWidth / 20,
                    child: Image.asset('icons/flags/png/us.png',
                        package: 'country_icons'),
                  ),
                ],
              ),
              SizedBox(
                height: screenlHeight / 77,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: screenWidth / 6,
                  ),
                  Text(
                    "James Marlon",
                    style: TextStyle(
                        fontFamily: "Cambria",
                        fontSize: 55.sp,
                        color: colorOfTitleInHomeScreen),
                  ),
                  SizedBox(
                    width: screenWidth / 8,
                  ),
                  SizedBox(
                    width: screenWidth / 34,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileSettingsTutors(),
                      ));
                    },
                    icon: Icon(Icons.settings),
                    iconSize: 60,
                  )
                ],
              ),
              // ********** BİYOGRAFİ *********
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Hi, I'm an english teacher who loves teaching something to kids and fuck them. If you want me to rape your kids just let me know. 😊❤👌",
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: "Cambria",
                      fontSize: 33.sp,
                      color: colorOfTitleInHomeScreen),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 0, left: screenWidth / 13),
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(
                      "4.0",
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: "Cambria",
                          fontSize: 33.sp,
                          color: colorOfTitleInHomeScreen),
                    ),
                    SizedBox(
                      width: screenWidth / 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: screenlHeight / 45, bottom: screenlHeight / 40),
                      child: Text(
                        "18\$ / Hour",
                        style: TextStyle(
                            fontSize: 35.sp,
                            fontFamily: fontFamilyCambria,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth / 28,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CalendarApp(),
                      )),
                      child: Container(
                        width: 150,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(4, 4),
                                  blurRadius: 10,
                                  spreadRadius: 1),
                              const BoxShadow(
                                  color: Colors.white,
                                  offset: const Offset(-4, -4),
                                  blurRadius: 10,
                                  spreadRadius: 1),
                            ]),
                        child: Center(
                          child: Text(
                            "      See \n Calender",
                            softWrap: true,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                              fontFamily: fontFamilyCambria,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
// ******* ÖDEME BUTONU **********

              SizedBox(
                height: screenlHeight / 27,
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth / 1.5),
                child: Text(
                  "Comments",
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: "Cambria",
                      fontSize: 33.sp,
                      color: Colors.grey),
                ),
              ),
              Column(
                children: [...sortComments()],
              )
            ],
          ),
        ),
      ),
    );
  }

  sortComments() {
    // Burada firebase'den gelen comment sayısını bir listeye koyarsın.
    int commentsCameFromFirebase = 100;
    List commentList = [];
    for (var i = 0; i < commentsCameFromFirebase; i++) {
      commentList.add(Column(children: [
        Container(
          //  color: Colors.black,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                    maxRadius: 47,
                    minRadius: 20,
                    backgroundImage: AssetImage("assetss/teacherman.jpg")),
                SizedBox(
                  width: screenWidth / 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: screenlHeight / 14,
                    ),
                    Container(
                      //    color: Colors.amber,
                      padding: EdgeInsets.only(right: screenWidth / 1.7),
                      child: Text("Micheal",
                          style: TextStyle(
                              fontSize: 30.sp, fontFamily: "Calisto")),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: screenlHeight / 60),
                      width: 540,

                      //  color: Colors.blue,
                      child: Text(
                        commentText,
                        maxLines: 15,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 35, 33, 33),
                            fontFamily: "Calisto"),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]));
    }
    return commentList;
  }
}
