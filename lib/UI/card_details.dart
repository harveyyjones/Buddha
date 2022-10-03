import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardDetailScreen extends StatefulWidget {
  CardDetailScreen({Key? key}) : super(key: key);

  @override
  State<CardDetailScreen> createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends State<CardDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: screenWidth,
        // height: screenlHeight,
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                height: screenlHeight / 77,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: screenWidth / 7,
                  ),
                  Text(
                    "James Marlon",
                    style: TextStyle(
                        fontFamily: "Cambria",
                        fontSize: 55.sp,
                        color: colorOfTitleInHomeScreen),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 12),
                    child: Text(
                      "- USA",
                      style: TextStyle(
                          fontFamily: "Cambria",
                          fontSize: 33.sp,
                          color: colorOfTitleInHomeScreen),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 66,
                      height: 66,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage("assetss/messageBubble.png"),
                      ),
                    ),
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
                padding: EdgeInsets.only(
                    right: screenWidth / 2, left: screenWidth / 13),
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => Icon(
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
                  ],
                ),
              ),
// ******* ÖDEME BUTONU **********
              Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Book"))
                ],
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
      commentList.add(Text("data"));
    }
    return commentList;
  }
}
