// ignore: file_names
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class MyReusableCard extends StatelessWidget {
  MyReusableCard(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitile});
  final List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  final String img;
  final String title;
  final String subtitile;

  getChart() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //Initialize the spark charts widget
      child: SfSparkLineChart.custom(
        color: Colors.green,
        //Enable the trackball
        trackball:
            SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
        //Enable marker
        marker: SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
        //Enable data label
        labelDisplayMode: SparkChartLabelDisplayMode.all,
        xValueMapper: (int index) => data[index].year,
        yValueMapper: (int index) => data[index].sales,
        dataCount: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.all(3),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      height: size.height * 0.45,
      width: size.width * 0.95,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(img),
            ),
            title: Text(
              title,
              style: const TextStyle(fontSize: 13),
            ),
            subtitle: Text(
              subtitile,
              style: const TextStyle(fontSize: 10),
            ),
            trailing: const Icon(Icons.more_horiz),
          ),
          const Divider(
            color: Colors.black38,
            thickness: 1.5,
            height: 1,
          ),
          Row(
            children: [
              Text(
                "500",
              ),
              DotWidget()
            ],
          ),
          Expanded(child: getChart()),
          Row(
            children: [Text("0    "), DotWidget()],
          ),
        ],
      ),
    );
  }
}

class DotWidget extends StatelessWidget {
  final double totalWidth = 300, dashWidth = 10, emptyWidth = 5, dashHeight = 2;

  final Color dashColor = Colors.black45;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalWidth ~/ (dashWidth + emptyWidth),
        (_) => Container(
          width: dashWidth,
          height: dashHeight,
          color: dashColor,
          margin: EdgeInsets.only(left: emptyWidth / 2, right: emptyWidth / 2),
        ),
      ),
    );
  }
}
