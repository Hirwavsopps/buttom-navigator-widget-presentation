import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matches = [
      'Man United 2 -6 Chelsea',
      'Arsenal 3 - 0 Man United',
      'Chelsea 7 - 1 Arsenal',
    ];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('Latest Matches',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        for (final m in matches)
          Card(
            child: ListTile(
              leading: const Icon(Icons.sports_soccer),
              title: Text(m),
            ),
          ),
      ],
    );
  }
}