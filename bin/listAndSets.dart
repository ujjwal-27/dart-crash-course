void main() {
  List<int> scores = [25, 88, 90, 100, 77];

  scores[0] = 98;
  scores.add(78);
  scores.remove(90);
  scores.removeLast();
  scores.shuffle();
  scores.removeAt(3);

  print(scores);

  for (int i = 0; i < scores.length; i++) {
    print(scores.elementAt(i));
  }

  Set<String> animals = {"cat", "lion", "dog", "cow", "lion"};

  animals.add("tiger");
  animals.add("cow");

  print(animals.add("mouse"));

  print(animals);
}
