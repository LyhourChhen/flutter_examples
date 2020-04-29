import "dart:math";

class Bmi_brain {
  Bmi_brain({this.weight, this.height});
  final int weight;
  final int height;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "Over Weight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInterpreter() {
    if (_bmi >= 25) {
      return "You must fucking eat less dude, if you not wanna die earlier in life !";
    } else if (_bmi > 18.5) {
      return "Cool bro, you're fucking do a great job to keep your self fucking stable chill to you man !";
    } else {
      return "Eat more Eat Everyday, Eat to be king to be better !";
    }
  }
}
