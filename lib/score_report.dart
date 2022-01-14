import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'game_state.dart';
import 'player_state.dart';

class ScoreReport extends StatelessWidget {
  ScoreReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gameState = Provider.of<GameState>(context);
    final playerState = Provider.of<PlayerState>(context);

    return Column(children: [
      // Widgets that need to update when controller data changes
      // need to be wrapped in Obx.
      Text('Player is ${playerState.name}'),
      Text('Total is ${gameState.total}'),
      Text('Average is ${gameState.average.toStringAsFixed(2)}'),
    ]);
  }
}
