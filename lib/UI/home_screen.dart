import 'package:buddha/UI%20Helpers/bottom_bar.dart';
import 'package:buddha/UI%20Helpers/card_for_fotune_tellers.dart';
import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 55,
            ),
            child: Text(homeScreenTitle,
                style: TextStyle(
                    fontFamily: fontFamilyCambria,
                    color: colorOfTitleInHomeScreen,
                    fontSize: 44,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 550,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                // color: Colors.amber,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    // TODO: Firebase'den yüksek puanlı olanlar arasından random çekilecek.
                    image: AssetImage("assetss/fortuneteller.jpg"))),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Container(
              width: screenWidth / 1,
              height: screenlHeight / 1.6,
              child: GridView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return CardForFortuneTellers();
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 500,
                  mainAxisSpacing: 0, //screenlHeight / 20,
                  crossAxisCount: 2,
                ),
                itemCount: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
