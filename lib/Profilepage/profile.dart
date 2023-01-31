import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rahove_ui/HomePage/home.dart';

import 'commponents/profile_card.dart';

class SliverAppBarStatus extends StatefulWidget {
  const SliverAppBarStatus() : super();

  @override
  _SliverAppBarStatusState createState() => _SliverAppBarStatusState();
}

enum _SelectedTab { home, favorite, search, person }

class _SliverAppBarStatusState extends State<SliverAppBarStatus> {
  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  bool isScrolled = false;
  var _selectedTab = _SelectedTab.person;

  void _handleIndexChanged(int i) {
    print("clicked" + i.toString());
    switch (i) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const HomePage();
        }));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const SliverAppBarStatus();
        }));
        break;
    }
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  void initState() {
    print("initalized");
    // TODO: implement initState
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.position.pixels > 0) {
            isScrolled = true;
          } else
            isScrolled = false;
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.blue;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }

  Widget onScrolledBar(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/icons/back.png'), fit: BoxFit.cover)),
      child: Center(
        child: SizedBox(
          height: 300.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 7.w,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 63.r,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                      radius: 60.r,
                      backgroundImage:
                          const AssetImage('lib/icons/soliana.png')),
                ),
              ),
              Text(
                'Liya Dereje',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15.sp),
              ),
              SizedBox(
                height: 6.w,
              ),
              Text(
                'LiyaDereje2@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 13.sp),
              ),
              SizedBox(
                height: 6.w,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget offScrolledBar(BuildContext context) {
    return FlexibleSpaceBar(
      // title: Text('Hello'),

      background: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/icons/soliana.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              color: Colors.white38,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 30.0.h, horizontal: 25.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Liya Dereje',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15.sp),
                          ),
                          Text(
                            'LiyaDereje2@gmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 13.sp),
                          )
                        ]),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff7d4cbb),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(fontSize: 13.sp),
                      ),
                    )
                  ],
                ),
              ),
            ))
      ]),
      // stretchModes: [StretchMode.zoomBackground],
    );
  }

  // ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 138, 160, 255),
            pinned: true,
            snap: false,
            floating: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            leadingWidth: 100,
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Row(children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  size: MediaQuery.of(context).size.width * 0.05,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * 0.04),
                )
              ]),
            ),
            flexibleSpace:
                isScrolled ? onScrolledBar(context) : offScrolledBar(context),
            collapsedHeight: MediaQuery.of(context).size.height * 0.4,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 5),
                      child: Row(children: <Widget>[
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                            child: const Divider(
                              thickness: 1,
                            )),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: Colors.black54),
                        ),
                        const Expanded(
                            child: Divider(
                          thickness: 1,
                        )),
                      ]),
                    ),
                    ProfileCard(
                      settingname: 'Email',
                      settingicon: Icons.email,
                      settingcount: '2',
                    ),
                    ProfileCard(
                      settingname: 'Security and Policy',
                      settingicon: Icons.security,
                      settingcount: '4',
                    ),
                    ProfileCard(
                      settingname: 'Terms and Services',
                      settingicon: Icons.note_alt_outlined,
                      settingcount: '4',
                    ),
                    ProfileCard(
                      settingname: 'Accessibility',
                      settingicon: Icons.accessibility,
                      settingcount: '4',
                    ),
                    ProfileCard(
                      settingname: 'Log Out',
                      settingicon: Icons.logout,
                      settingcount: '4',
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
