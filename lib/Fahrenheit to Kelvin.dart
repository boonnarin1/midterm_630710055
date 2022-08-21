class fTo_Kelvin{

  static final List<int> guessCountList = [];
  double doGuess(double num) {
    var k = 5/9*(num - 32) + 273.15
    ;
    return k;
  }
}