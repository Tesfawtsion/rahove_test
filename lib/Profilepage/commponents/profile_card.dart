import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    required this.settingname,
    required this.settingicon,
    required this.settingcount,
  });

  String settingname;
  IconData settingicon;
  String settingcount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    settingicon,
                    size: MediaQuery.of(context).size.width * 0.08,
                    color: Color(0xa83b136f),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            settingname,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: Colors.black),
                          ),
                          Text(
                            settingcount,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                  ),
                ]),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfff7f7f7),
              shadowColor: Colors.transparent),
        ),
      ),
    );
  }
}
