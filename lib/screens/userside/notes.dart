import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyNotesPage(),
    );
  }
}

class MyNotesPage extends StatefulWidget {
  const MyNotesPage({Key? key}) : super(key: key);

  @override
  State<MyNotesPage> createState() => _MyNotesPageState();
}

class _MyNotesPageState extends State<MyNotesPage> {
  final List<Map<String, dynamic>> _notes = [
    {"id": 1, "name": "Topic 1", "date": "29/06/2022"},
    {"id": 2, "name": "Topic 2", "date": "14/01/2022"},
    {"id": 3, "name": "Topic 3", "date": "14/8/2022"},
    {"id": 4, "name": "Topic 4", "date": "10/03/2022"},
    {"id": 5, "name": "Topic 5", "date": "29/09/2022"},
    {"id": 6, "name": "Topic 6", "date": "11/04/2022"},
    {"id": 7, "name": "Topic 7", "date": "20/011/2022"},
    {"id": 8, "name": "Topic 8", "date": "25/12/2022"},
    {"id": 9, "name": "Topic 9", "date": "16/01/2023"},
    {"id": 10, "name": "Topic 10", "date": "28/02/2023"},
  ];

  //This list holds data for list view

  List<Map<String, dynamic>> _foundNotes = [];
  @override
  initState() {
    _foundNotes = _notes;
    super.initState();
  }

  //function for the text field

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];

    //if the search box is empty
    if (enteredKeyword.isEmpty) {
      //display all users
      results = _notes;
    } else {
      //converting entered keyword on search bar to lower case
      results = _notes
          .where((element) => element["name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes Section'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: _foundNotes.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundNotes.length,
                        itemBuilder: (context, index) => Card(
                              key: ValueKey(_foundNotes[index]["id"]),
                              color: Colors.lightBlue,
                              elevation: 4,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              child: ListTile(
                                leading: Text(
                                  _foundNotes[index]["id"].toString(),
                                  style: const TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                                title: Text(
                                  _foundNotes[index]['name'],
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  '${_foundNotes[index]['date'].toString()}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ))
                    : const Text(
                        'No results found',
                        style: TextStyle(fontSize: 24),
                      ))
          ],
        ),
      ),
    );
  }
}
