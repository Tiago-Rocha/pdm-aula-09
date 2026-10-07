import 'package:flutter/material.dart';
import 'data.dart';
import 'island_screen.dart';

/// One island in the grid: photo on top, name below.
///
/// Tapping it opens the island screen.
class IslandCard extends StatelessWidget {
  const IslandCard({super.key, required this.island});

  final Island island;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => IslandScreen(id: island.id)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Image.asset(island.image, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(island.name, textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
