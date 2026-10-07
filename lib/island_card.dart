import 'package:flutter/material.dart';

import 'data.dart';

/// One island in the grid: photo on top, name below.
///
/// TODO 1: wrap the Column in an InkWell. On tap, open IslandScreen with
/// Navigator.push and wait for its result; if it is true, show a SnackBar
/// with the island name and 'nos favoritos'.
class IslandCard extends StatelessWidget {
  const IslandCard({super.key, required this.island});

  final Island island;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
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
    );
  }
}
