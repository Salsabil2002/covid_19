import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {

  final Map worldWide;

  const WorldWidePanel({super.key, required this.worldWide});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2
        ),
        children: <Widget>[
          StatusPanel(
            title: 'CONFIRMED',
            panelColor:Colors.white,
            textColor: Colors.red,
            count: worldWide['cases'].toString(),
          ),
          StatusPanel(
            title: 'ACTIVE',
            panelColor: Colors.white,
            textColor: Colors.blue,
            count: worldWide['active'].toString(),
          ),
          StatusPanel(
            title: 'RECOVERD',
            panelColor: Colors.white,
            textColor: Colors.green,
            count: worldWide['recovered'].toString(),
          ),
          StatusPanel(
            title: 'DEATHS',
            panelColor: Colors.white,
            textColor: Colors.black87,
            count: worldWide['deaths'].toString(),
          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel({super.key, required this.panelColor, required this.textColor, required this.title, required this.count});


  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          Text(title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor
            ),
          ),
          Text(count,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: textColor
            ),
          )
        ],
      ),
    );
  }
}