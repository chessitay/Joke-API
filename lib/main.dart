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

  final List<String> flags = [
    'nsfw',
    'religious',
    'political',
    'racist',
    'sexist',
    'explicit',
  ];

  List<bool> isCategorieChecked = [false, false, false, false, false, false];
  List<bool> isFlagChecked = [false, false, false, false, false, false];
  TextEditingController searchController = TextEditingController();
  TextEditingController fromIdController = TextEditingController();
  TextEditingController toIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Joke categories',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isCategorieChecked[0],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[0] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                'Programming',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isCategorieChecked[1],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[1] = value!;
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
                                  value: isCategorieChecked[2],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[2] = value!;
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
                                  value: isCategorieChecked[3],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[3] = value!;
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
                                  value: isCategorieChecked[4],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[4] = value!;
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
                                  value: isCategorieChecked[5],
                                  onChanged: (value) {
                                    setState(() {
                                      isCategorieChecked[5] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('Christmas', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Select flags to blacklist',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[0],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[0] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('nsfw', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[1],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[1] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('religious', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[2],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[2] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('political', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[3],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[3] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('racist', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[4],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[4] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('sexist', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: isFlagChecked[5],
                                  onChanged: (value) {
                                    setState(() {
                                      isFlagChecked[5] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text('explicit', style: TextStyle(fontSize: 20)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Search for a joke that contains (optional)',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 14,
                              right: 14,
                              top: 10,
                            ),
                            child: TextField(
                              controller: searchController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'optional',
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Search for a joke in this ID range (optional)',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 14,
                              right: 14,
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: fromIdController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'from',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: TextField(
                                    controller: toIdController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'to',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
      ),
      backgroundColor: Colors.white,
    );
  }
}
