import 'package:flutter/material.dart';

const iconColor = Color(0xff8d8e98);

final textStyle = TextStyle(
  fontSize: 18.0,
  color: iconColor,
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
  final Function onPressed;
  //Initialized constructor
  ReusableCard({@required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: this.color,
        ),
      ),
    );
  }
}
