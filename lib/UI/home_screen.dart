import 'package:buddha/UI%20Helpers/bottom_bar.dart';
import 'package:buddha/UI%20Helpers/card_for_fotune_tellers.dart';
import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: screenlHeight / 20 as double,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  width: screenWidth / 1,
                  height: screenlHeight / 1 / (12 / 10.5),
                  child: GridView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return CardForFortuneTellers();
                    },
                        gridDelegate: 
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
        ));
  }
}


class ListOfAllCards extends StatelessWidget {
  const ListOfAllCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
  gridDelegate: SliverWovenGridDelegate.count(
    crossAxisCount: 2,
    mainAxisSpacing: 8,
    crossAxisSpacing: 8,
    pattern: [
      WovenGridTile(1),
      WovenGridTile(
        5 / 7,
        crossAxisRatio: 0.9,
        alignment: AlignmentDirectional.centerEnd,
      ),
    ],
  ),
  childrenDelegate: SliverChildBuilderDelegate(
    (context, index) => Container(color: Colors.black, width: 200,),
  ),
);
  }
}