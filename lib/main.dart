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

  List<bool> isChecked = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Joke categories:'),
            CheckboxListTile(
              value: isChecked[0],
              onChanged: (value) {
                setState(() {
                  isChecked[0] = value!;
                });
              },
              title: Text('Programming'),
            ),
            CheckboxListTile(
              value: isChecked[1],
              onChanged: (value) {
                setState(() {
                  isChecked[1] = value!;
                });
              },
              title: Text('Misc'),
            ),
            CheckboxListTile(
              value: isChecked[2],
              onChanged: (value) {
                setState(() {
                  isChecked[2] = value!;
                });
              },
              title: Text('Dark'),
            ),
            CheckboxListTile(
              value: isChecked[3],
              onChanged: (value) {
                setState(() {
                  isChecked[3] = value!;
                });
              },
              title: Text('Puns'),
            ),
            CheckboxListTile(
              value: isChecked[4],
              onChanged: (value) {
                setState(() {
                  isChecked[4] = value!;
                });
              },
              title: Text('Spooky'),
            ),
            CheckboxListTile(
              value: isChecked[5],
              onChanged: (value) {
                setState(() {
                  isChecked[5] = value!;
                });
              },
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
