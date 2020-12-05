import 'package:flutter/material.dart';

const appColorPalette = {"iconColor": 0xff8d8e98};

final textStyle = TextStyle(
  fontSize: 18.0,
  color: Color(appColorPalette["iconColor"]),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  //Initialized constructor
  IconContent({@required this.icon, @required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(this.label, style: textStyle)
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  //Initialized constructor
  ReusableCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: this.color,
      ),
    );
  }
}
