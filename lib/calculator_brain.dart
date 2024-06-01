import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({
    required this.weight,
    required this.height
});
  int weight;
  int height;

  double _bmi = 0.0;

  String calculateBMI() {
    print("inside get bmi calc");
    _bmi = weight / (pow((height/100) ,2));
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    print("inside get result");
    print(_bmi);
    if(_bmi >= 25) return 'Overweight';
    else if(_bmi > 18.5 ) return 'Normal';
    else return "Underweight";
  }

  String getInterpretation() {
    if(_bmi >= 25) return 'You have higher than normal body weight.Try to exercise more.';
    else if(_bmi > 18.5 ) return 'Great Job, Everything is nice. Keep it up!';
    else return 'Your BMI result is quite low, you should eat more';
  }
}