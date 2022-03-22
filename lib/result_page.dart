import 'package:flutter/material.dart';
import 'package:flutter_application_bmi/input_page.dart';
import 'package:flutter_application_bmi/reusable_card.dart';

const largebuttonstyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const titlestyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const resultstyle = TextStyle(
  color: Colors.greenAccent,
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);
const bmiresultstyle = TextStyle(
  color: Color.fromARGB(255, 252, 252, 252),
  fontSize: 60.0,
  fontWeight: FontWeight.bold,
);

const bmiresltbodystyle = TextStyle(
  color: Color.fromARGB(255, 252, 252, 252),
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bmi Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Your Result',
                    style: titlestyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Reuseablecard(
                colour: activeCardcolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      //resultText,
                      style: resultstyle,
                    ),
                    Text(
                      bmiResult,
                      //bmiResult,
                      style: bmiresultstyle,
                    ),
                    Text(
                      interpretation,
                      //interpretation,
                      style: bmiresltbodystyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Recalculate(
              buttonTitle: 'Recalculate',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ));
  }
}
