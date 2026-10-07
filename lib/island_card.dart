import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'data.dart';

/// One island in the grid: photo on top, name below.
///
/// Tapping it opens the island screen and waits for its result.
class IslandCard extends StatelessWidget {
  const IslandCard({super.key, required this.island});

  final Island island;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () async {
          final favorite = await context.push<bool>('/island/${island.id}');
          if (favorite == true && context.mounted) {
            // the card may be gone
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${island.name} nos favoritos')),
            );
          }
        },
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
