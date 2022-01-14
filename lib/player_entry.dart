import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'player_state.dart';

// This needs to be stateful in order
// to hold a TextEditingController instance.
class PlayerEntry extends StatefulWidget {
  const PlayerEntry({Key? key}) : super(key: key);

  @override
  _PlayerEntryState createState() => _PlayerEntryState();
}

class _PlayerEntryState extends State<PlayerEntry> {
  @override
  Widget build(BuildContext context) {
    final playerState = Provider.of<PlayerState>(context, listen: false);

    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'player name',
              labelText: 'Player',
            ),
            initialValue: playerState.name,
            onChanged: (String name) {
              playerState.name = name;
            },
          ),
        ),
      ],
    );
  }
}
