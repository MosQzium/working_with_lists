import 'package:flutter/material.dart';

import '../../model/gameModel.dart';
import '../../reusable_widget/reusable_btn.dart';

class ListviewSection extends StatelessWidget {
  final List<GameModel> games;
  final void Function(int) onDelete;

  const ListviewSection({
    super.key,
    required this.games,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(115.0, 40.0, 115.0, 0.0),
        child: ListView.builder(
          itemCount: games.length,
          itemBuilder: (_, index) {
            final game = games[index];
            return Card(
              elevation: 12.0,
              color: Colors.white,
              child: ListTile(
                leading: Image.asset("images/roblox.jpg", fit: BoxFit.cover),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(game.title), Text(game.type)],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(thickness: 2.0, color: Colors.red),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: Text(game.description)),
                        const SizedBox(width: 8.0),
                        Text(game.age.toString()),
                      ],
                    ),
                    SizedBox(height: 30.0),
                    ReusableBtn(
                      title: 'Delete',
                      color: Colors.redAccent,
                      function: () {
                        onDelete(game.id);
                      },
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
