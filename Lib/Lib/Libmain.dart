import 'package:flutter/material.dart';

void main() {
  runApp(const ContributionTrackerApp());
}

class ContributionTrackerApp extends StatelessWidget {
  const ContributionTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contribution Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contribution Tracker'),
      ),
      body: const Center(
        child: Text(
          'Welcome to your Contribution Tracker App! 🚀',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

// After adding this file, build your app in Codemagic! Let me know if anything else comes up! 🚀
