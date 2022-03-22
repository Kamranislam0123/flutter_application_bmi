// import 'dart:math';

// class Calculation {
//   Calculation({this.height, this.weight});

//   final int height;
//   final int weight;

//   double _bmi;

//   String calculatebmi() {
//     double _bmi = weight / pow(height/100, 2);
//     return _bmi.toStringAsFixed(1);
//   }

//   String getResult() {
//     if (_bmi >= 25) {
//       return 'OverWeight';
//     } else if (_bmi > 18.5) {
//       return 'Normal';
//     } else {
//       return 'Underweight';
//     }
//   }

//   String getinterpretation() {
//     if (_bmi >= 25) {
//       return 'You have heigher that normal body weight . Try to Exercise More.';
//     } else if (_bmi > 18.5) {
//       return 'You Have normal body weight . Good Job.';
//     } else {
//       return 'You have a lower Than normal body Weight . You can eat a bit more.';
//     }
//   }
// }


import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
      
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}