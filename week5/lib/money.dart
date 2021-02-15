import 'package:flutter/material.dart';

class Money extends StatelessWidget {
  String Text1;
  String Text2;
  Color TextColor;
  double TextSize;
  double FontSize;

  Money(String text1, String text2, Color Textcolor, double Textsize,
      double Fontsize) {
    this.Text1 = text1;
    this.Text2 = text2;
    this.TextColor = Textcolor;
    this.TextSize = Textsize;
    this.FontSize = Fontsize;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(4),
      height: this.TextSize,
      decoration: BoxDecoration(
          color: TextColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$Text1',
            style: TextStyle(
              color: Colors.white,
              fontSize: FontSize,
            ),
          ),
          Text(
            '$Text2',
            style: TextStyle(
              color: Colors.white,
              fontSize: FontSize,
            ),
          ),
        ],
      ),
    );
  }
}
