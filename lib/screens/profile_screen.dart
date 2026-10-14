import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(radius: 45, child: Icon(Icons.person, size: 45)),
          SizedBox(height: 12),
          Text('Your Name',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text('Favorite team: Chelsea', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}