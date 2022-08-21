// ignore_for_file: avoid_print



class Fahrenheit {
  int? C;
  static final List<int> guessCountList = [];
  Fahrenheit({int C = 1 }) {

  }
  double doGuess(double num) {
    var F = 1.80*(num);
    return F;
  }

}