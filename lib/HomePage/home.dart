// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/constants.dart';
import 'package:rahove_ui/Profilepage/profile.dart';

import 'Components/dashbordicon.dart';
import 'Components/recent_opration_card.dart';

import '../widgets/reusableCard.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'Components/textContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var _selectedTab = _SelectedTab.home;

    void _handleIndexChanged(int i) {
      print("clicked" + i.toString());
      switch (i) {
        case 3:
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SliverAppBarStatus();
          }));
          break;
      }
      setState(() {
        _selectedTab = _SelectedTab.values[i];
      });
    }

    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 400.w,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xcf7f9eee), Color(0xaba075ee)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.w,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SliverAppBarStatus();
                              }));
                            },
                            child: CircleAvatar(
                              radius: 35.r,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 35.r,
                                backgroundImage:
                                    AssetImage('lib/icons/avatar.png'),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text('Home',
                              style: GoogleFonts.poppins(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                          SizedBox(width: 25.w),
                          DashbordIcon(),
                        ]),
                    SizedBox(height: 10.w),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                      child: Text(
                        'Hello Soliyana',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                      child: Text(
                        'Let\'s Check Our Status',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 12.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                      width: double.infinity,
                      height: 200.w,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          MyReusableCard(
                            img: 'lib/icons/feres.png',
                            title: 'Feres',
                            subtitile: 'https://www.feres.com',
                          ),
                          MyReusableCard(
                            img: 'lib/icons/feres.png',
                            title: 'Feres',
                            subtitile: 'https://www.feres.com',
                          ),
                          MyReusableCard(
                            img: 'lib/icons/feres.png',
                            title: 'Feres',
                            subtitile: 'https://www.feres.com',
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.0.w, vertical: 9.h),
                alignment: Alignment.topLeft,
                width: 350.w,
                height: 400.w,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 80.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent oprations',
                          style: GoogleFonts.poppins(
                              color: kprimarycolor, fontSize: 13.sp),
                        ),
                        const SizedBox(height: 10),
                        TextContainer(
                          text: 'Today',
                        ),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.green,
                          imgurl: 'lib/icons/img1.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                        Divider(
                            color: Colors.black38, thickness: 2.5, height: 1),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.red,
                          imgurl: 'lib/icons/mehret.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextContainer(text: 'Yesterday'),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.green,
                          imgurl: 'lib/icons/soli.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                        Divider(
                            color: Colors.black38, thickness: 2.5, height: 1),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.red,
                          imgurl: 'lib/icons/dawit.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                        Divider(
                            color: Colors.black38, thickness: 2.5, height: 1),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.green,
                          imgurl: 'lib/icons/img1.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                        Divider(
                            color: Colors.black38, thickness: 2.5, height: 1),
                        Divider(
                            color: Colors.black38, thickness: 2.5, height: 1),
                        Recent_opration_card(
                          Phone: '+251 939 09 0908',
                          color: Colors.red,
                          imgurl: 'lib/icons/img1.png',
                          name: 'Yona Tesfaye',
                          price: '1000.2',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          //bottom navigation bar
          extendBody: true,
          bottomNavigationBar: DotNavigationBar(
            marginR: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            onTap: _handleIndexChanged,

            // dotIndicatorColor: Colors.black,
            items: [
              /// Home
              DotNavigationBarItem(
                icon: const Icon(Icons.home),
                selectedColor: Colors.purple,
              ),

              /// Likes
              DotNavigationBarItem(
                icon: const Icon(Icons.favorite_border),
                selectedColor: Colors.purple,
              ),

              /// Search
              DotNavigationBarItem(
                icon: const Icon(Icons.search),
                selectedColor: Colors.purple,
              ),

              /// Profile
              DotNavigationBarItem(
                icon: const Icon(Icons.person),
                selectedColor: Colors.purple,
              ),
            ],
          )),
    );
  }
}

enum _SelectedTab { home, favorite, search, person }
