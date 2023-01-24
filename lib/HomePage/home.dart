// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/constants.dart';
import 'package:rahove_ui/Profilepage/profile.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
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
          body: Column(children: [
            //for the upper first contents
            Container(
              height: size.height * 0.52,
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
                    height: size.height * 0.03,
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
                          child: const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('lib/icons/avatar.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.025),
                        Text('Home',
                            style: GoogleFonts.poppins(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        const SizedBox(width: 25),
                        DashbordIcon(),
                      ]),
                  SizedBox(height: size.height * 0.03),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: const Text(
                      'Hello Soliyana',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.013,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      'Let\'s Check Our Status',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.013,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    width: size.width,
                    height: size.height * 0.25,
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
            //for the second lower contents

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(9.0),
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 80.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent oprations',
                          style: GoogleFonts.poppins(color: kprimarycolor),
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
            ),
          ]),
          //bottom navigation bar
          extendBody: true,
          bottomNavigationBar: DotNavigationBar(
            marginR: const EdgeInsets.only(left: 7, right: 7),
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
