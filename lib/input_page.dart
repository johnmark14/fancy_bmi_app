import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(color: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(color: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  ReusableCard({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: this.color,
      ),
    );
  }
}
