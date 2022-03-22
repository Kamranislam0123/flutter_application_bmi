import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const lebelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white,
);

class iconcard extends StatelessWidget {
  iconcard({@required this.icon, this.lebel});

  IconData icon;
  String lebel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        Text(
          lebel,
          style: GoogleFonts.poppins(textStyle: lebelTextStyle),
        ),
      ],
    );
  }
}
