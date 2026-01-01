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
  List categoryList = [
    'Programming',
    false,
    'Misc',
    false,
    'Dark',
    false,
    'Puns',
    false,
    'Spooky',
    false,
    'Christmas',
    false,
  ];

  List flagList = [
    'nsfw',
    false,
    'religious',
    false,
    'political',
    false,
    'racist',
    false,
    'sexist',
    false,
    'explicit',
    false,
  ];

  List typeList = ['single', true, 'twopart', true];

  TextEditingController searchController = TextEditingController();
  TextEditingController fromIdController = TextEditingController();
  TextEditingController toIdController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  List<String> selectedCategories = [];
  List<String> selectedFlags = [];
  List<String> selectedTypes = [];

  String url = "";

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
                                  value: categoryList[1],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[1] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[0],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: categoryList[3],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[3] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[2],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: categoryList[5],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[5] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[4],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: categoryList[7],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[7] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[6],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: categoryList[9],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[9] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[8],
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: categoryList[11],
                                  onChanged: (value) {
                                    setState(() {
                                      categoryList[11] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                categoryList[10],
                                style: TextStyle(fontSize: 20),
                              ),
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
                                  value: flagList[1],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[1] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(flagList[0], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: flagList[3],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[3] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(flagList[2], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: flagList[5],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[5] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(flagList[4], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: flagList[7],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[7] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(flagList[6], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: flagList[9],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[9] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(flagList[8], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: flagList[11],
                                  onChanged: (value) {
                                    setState(() {
                                      flagList[11] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(
                                flagList[10],
                                style: TextStyle(fontSize: 20),
                              ),
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
                                      hintText: 'from: 0',
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
                                      hintText: 'to: 1367',
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Select at least one joke type',
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
                                  value: typeList[1],
                                  onChanged: (value) {
                                    setState(() {
                                      typeList[1] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(typeList[0], style: TextStyle(fontSize: 20)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Checkbox(
                                  value: typeList[3],
                                  onChanged: (value) {
                                    setState(() {
                                      typeList[3] = value!;
                                    });
                                  },
                                ),
                              ),
                              Text(typeList[2], style: TextStyle(fontSize: 20)),
                            ],
                          ),

                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(left: 14),
                            child: Text(
                              'Amount of jokes',
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
                            child: SizedBox(
                              width: 60,
                              child: TextField(
                                controller: amountController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '1',
                                ),
                                keyboardType: TextInputType.number,
                              ),
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
                onPressed: () {
                  setState(() {
                    selectedCategories.clear();
                    selectedFlags.clear();
                    selectedTypes.clear();

                    for (int i = 0; i < categoryList.length; i += 2) {
                      if (categoryList[i + 1] == true) {
                        selectedCategories.add(categoryList[i]);
                      }
                    }

                    for (int i = 0; i < flagList.length; i += 2) {
                      if (flagList[i + 1] == true) {
                        selectedFlags.add(flagList[i]);
                      }
                    }

                    for (int i = 0; i < typeList.length; i += 2) {
                      if (typeList[i + 1] == true) {
                        selectedTypes.add(typeList[i]);
                      }
                    }

                    if (selectedCategories.isEmpty) {
                      selectedCategories.add('Any');
                    }

                    String selectedCategoriesString = selectedCategories.join(
                      ',',
                    );
                    String selectedFlagsString = selectedFlags.join(',');
                    String selectedTypesString = selectedTypes.join(',');

                    url =
                        "https://v2.jokeapi.dev/joke/" +
                        selectedCategoriesString;

                    String firstSeparator = "?";

                    if (selectedFlagsString != "") {
                      url =
                          url +
                          firstSeparator +
                          "blacklistFlags=" +
                          selectedFlagsString;
                      firstSeparator = "&";
                    }

                    if (selectedTypes.length == 1) {
                      url =
                          url + firstSeparator + "type=" + selectedTypesString;
                      firstSeparator = "&";
                    }

                    if (searchController.text != "") {
                      url =
                          url +
                          firstSeparator +
                          "contains=" +
                          searchController.text;
                      firstSeparator = "&";
                    }

                    if (fromIdController.text != "" &&
                        toIdController.text != "") {
                      url =
                          url +
                          firstSeparator +
                          "idRange=" +
                          fromIdController.text +
                          "-" +
                          toIdController.text;
                      firstSeparator = "&";
                    }

                    if (amountController.text != "") {
                      url =
                          url +
                          firstSeparator +
                          "amount=" +
                          amountController.text;
                      firstSeparator = "&";
                    }

                    print("API URL: " + url);
                  });
                },
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
