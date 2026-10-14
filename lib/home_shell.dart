import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/standings_screen.dart';
import 'screens/profile_screen.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _index = 0; // which tab is selected

  final List<Widget> _pages = const [
    HomeScreen(),
    StandingsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premier League'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: _pages[_index], // show the page for the selected tab
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,                              // Attribute 1
        onTap: (i) => setState(() => _index = i),          // switches tab
        selectedItemColor: const Color.fromARGB(255, 176, 22, 86),              // Attribute 2
        type: BottomNavigationBarType.fixed,               // Attribute 3
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Standings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}