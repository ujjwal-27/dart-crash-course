void main() {
  List<int> scores = [25, 88, 90, 100, 77];

  // using if condition
  for (int score in scores) {
    if (score > 50) {
      print("The score is $score");
    }
  }

  // using where condition in for loop
  for (int score in scores.where((s) => s > 50)) {
    print("The score is $score.");
  }
}
