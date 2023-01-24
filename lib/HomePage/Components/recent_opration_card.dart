import 'package:flutter/material.dart';
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
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      decoration: BoxDecoration(color: Color.fromARGB(31, 99, 97, 97)),
      width: double.infinity,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              imgurl,
              scale: 0.09,
            ),
          ),
          SizedBox(
            width: size.width * 0.03,
          ),
          Column(
            children: [
              Text(
                name,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 18),
              ),
              Text(
                Phone,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w200,
                    color: Colors.grey,
                    fontSize: 13),
              )
            ],
          ),
          SizedBox(
            width: size.width * 0.2,
          ),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: color,
                  ),
                  Text(price),
                  Text(
                    'ETB',
                    style: GoogleFonts.poppins(color: kprimarycolor),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '04:08',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                  ),
                  Text('Am',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w200))
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
