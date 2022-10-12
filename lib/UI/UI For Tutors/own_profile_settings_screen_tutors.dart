import 'package:buddha/UI%20Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../UI Helpers/personal_info_name_bar.dart';

class ProfileSettingsTutors extends StatefulWidget {
  const ProfileSettingsTutors({super.key});

  @override
  State<ProfileSettingsTutors> createState() => _ProfileSettingsTutorsState();
}

TextEditingController nameController = TextEditingController(text: "Hailey");
TextEditingController eMailController =
    TextEditingController(text: "haileyelse@gmail.com");

class _ProfileSettingsTutorsState extends State<ProfileSettingsTutors> {
  var _selectedItem = "Intermediate";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: screenlHeight / 20),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color.fromARGB(255, 231, 231, 231),
                Color.fromARGB(255, 246, 246, 246)
              ])),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                    color: Color.fromARGB(0, 176, 11, 11),
                    width: screenWidth / 2,
                    child: CircleAvatar(
                        maxRadius: 180,
                        minRadius: 55,
                        backgroundImage: AssetImage("assetss/teacherman.jpg")),
                  ),
                  Positioned(
                      right: screenWidth / 25,
                      top: screenlHeight / 5,
                      child: IconButton(
                          iconSize: 75,
                          onPressed: () {
                            //TODO: Image picker ile foto değiştirilebiliyor olacak. Muhtemelen localde saklanabilir. Aşağıda dil seviyeleri belirleme kısmı var onlarında lokalde tutulması lazım.
                          },
                          icon: Icon(color: Colors.white, Icons.settings)))
                ],
              ),
              SizedBox(
                height: screenlHeight / 33,
                width: MediaQuery.of(context).size.width,
              ),
              PersonalInfoNameBar(
                label: "Name",
                lineCount: 1,
                controller: nameController,
              ),
              PersonalInfoNameBar(label: "Biography", lineCount: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PersonalInfoNameBar(
                    label: "Price",
                    width: screenWidth / 5,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: screenlHeight / 40, left: 5),
                    child: Text(
                      "\$ / Hour",
                      style: TextStyle(fontSize: 27),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(right: screenWidth / 13),
                child: DropdownButton(
                  underline: SizedBox(),
                  icon: const Icon(Icons.arrow_drop_down_circle_outlined,
                      size: 44, color: Colors.black),
                  hint: Row(
                    children: [
                      Image.asset('icons/flags/png/us.png',
                          package: 'country_icons'),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        _selectedItem.toString(),
                        style: TextStyle(fontSize: 33),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  iconSize: 150,
                  items: const [
                    DropdownMenuItem(
                      value: "Beginner",
                      child: Text(
                        "Beginner",
                      ),
                    ),
                    DropdownMenuItem(
                      child: Text("Intermediate"),
                      value: "Intermediate",
                    ),
                    DropdownMenuItem(
                      child: Text("Advanced"),
                      value: "Advenced",
                    ),
                    DropdownMenuItem(
                      child: Text("Native"),
                      value: "Native",
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {});
                    print(value);
                    _selectedItem = value!;
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 250.w,
                height: 70.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Color.fromARGB(255, 182, 99, 174),
                      primary: Colors.black,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      minimumSize: Size(230.w, 60.h)),
                  onPressed: () {},
                  child: Text("Submit",
                      style: TextStyle(
                        fontFamily: 'Calisto',
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
