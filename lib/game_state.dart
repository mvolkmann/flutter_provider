import 'package:flutter/foundation.dart'; // defines ChangeNotifier

int sum(List<int> numbers) =>
    numbers.isEmpty ? 0 : numbers.reduce((acc, score) => acc + score);

class GameState extends ChangeNotifier {
  final _scores = <int>[];

  void addScore(int score) {
    _scores.add(score);
    notifyListeners();
  }

  void clearScores() {
    _scores.clear();
    notifyListeners();
  }

  double get average => _scores.isEmpty ? 0 : sum(_scores) / _scores.length;

  int get count => _scores.length;

  int get total => sum(_scores);
}
