import 'package:flutter/material.dart';

class DashbordIcon extends StatelessWidget {
  const DashbordIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 184, 74, 199)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.rectangle_rounded,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 184, 74, 199)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.rectangle_rounded,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 184, 74, 199)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.rectangle_rounded,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 3, color: Color.fromARGB(255, 184, 74, 199)),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: const Icon(
                    Icons.rectangle_rounded,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
