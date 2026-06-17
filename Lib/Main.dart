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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> members = [];
  final TextEditingController nameController = TextEditingController();

  void addMember() {
    if (nameController.text.isNotEmpty) {
      setState(() {
        members.add(nameController.text);
        nameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contribution Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Member Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: addMember,
              child: const Text('Add Member'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: members.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(members[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Save this file as lib/main.dart
// Let me know when you’re ready for the next file! 🚀
