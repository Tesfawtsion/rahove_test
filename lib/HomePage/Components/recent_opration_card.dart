import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove_ui/constants.dart';

class Recent_opration_card extends StatelessWidget {
  final String imgurl;
  final String name;
  final String Phone;
  final Color color;
  final String price;
  const Recent_opration_card({
    Key? key,
    required this.imgurl,
    required this.name,
    required this.Phone,
    required this.color,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      decoration: BoxDecoration(color: Color.fromARGB(31, 99, 97, 97)),
      width: 370.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              imgurl,
              scale: 0.09,
            ),
          ),
          Column(
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 17.sp),
              ),
              Text(
                Phone,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                    fontSize: 12.sp),
              )
            ],
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: color,
                    size: 20.r,
                  ),
                  Text(
                    price,
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  Text(
                    'ETB',
                    style: GoogleFonts.poppins(
                        color: kprimarycolor, fontSize: 12.sp),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '04:08',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 12.sp),
                  ),
                  Text('Am',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w200, fontSize: 12.sp))
                ],
              ),
              Divider(color: Colors.black38, thickness: 2.5, height: 1)
            ],
          ),
        ],
      ),
    );
  }
}
