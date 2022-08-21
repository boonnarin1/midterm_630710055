class kTo_Fahrenheit{

  static final List<int> guessCountList = [];
  double doGuess(double num) {
    var F = 1.8*(num - 273) + 32
    ;
    return F;
  }
}