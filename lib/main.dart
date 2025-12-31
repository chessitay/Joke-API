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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Text(
                      'Joke categories:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[0],
                          onChanged: (value) {
                            setState(() {
                              isChecked[0] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Programming', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[1],
                          onChanged: (value) {
                            setState(() {
                              isChecked[1] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Misc', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[2],
                          onChanged: (value) {
                            setState(() {
                              isChecked[2] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Dark', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[3],
                          onChanged: (value) {
                            setState(() {
                              isChecked[3] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Puns', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[4],
                          onChanged: (value) {
                            setState(() {
                              isChecked[4] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Spooky', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Checkbox(
                          value: isChecked[5],
                          onChanged: (value) {
                            setState(() {
                              isChecked[5] = value!;
                            });
                          },
                        ),
                      ),
                      Text('Christmas', style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Get Joke',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
