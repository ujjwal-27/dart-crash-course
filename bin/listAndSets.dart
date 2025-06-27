void main() {
  List<int> scores = [25, 88, 90, 100, 77];

  scores[0] = 98;
  scores.add(78);
  scores.remove(90);
  scores.removeLast();
  scores.shuffle();
  scores.removeAt(3);

  print(scores);
}
