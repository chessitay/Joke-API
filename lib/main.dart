import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'Programming',
    'Misc',
    'Dark',
    'Puns',
    'Spooky',
    'Christmas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Joke categories:'),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Programming'),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Misc'),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Dark'),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Puns'),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Spooky'),
            ),
            CheckboxListTile(
              value: false,
              onChanged: (value) {},
              title: Text('Christmas'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Get Joke')),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
