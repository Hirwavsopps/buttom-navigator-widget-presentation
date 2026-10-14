import 'package:flutter/material.dart';

class StandingsScreen extends StatelessWidget {
  const StandingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Team, Played, Won, Drawn, Lost, Points
    final table = [
      ['Chelsea', 8, 6, 1, 1, 19],
      ['Man United', 8, 5, 2, 1, 17],
      ['Arsenal', 8, 4, 2, 2, 14],
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Team')),
          DataColumn(label: Text('P')),
          DataColumn(label: Text('W')),
          DataColumn(label: Text('D')),
          DataColumn(label: Text('L')),
          DataColumn(label: Text('Pts')),
        ],
        rows: [
          for (final r in table)
            DataRow(cells: [for (final c in r) DataCell(Text('$c'))]),
        ],
      ),
    );
  }
}