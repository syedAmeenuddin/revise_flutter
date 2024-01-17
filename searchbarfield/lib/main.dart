import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    // MultiBlocProvider(
    // providers: [],
    // child:
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      // theme: ThemeData(
      //     textTheme: TextTheme(bodySmall: TextStyle(color: Colors.black))),
      initialRoute: '/',
      routes: {
        '/': (context) => MyApp(),
      },
    ),
    // ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController textsearch = TextEditingController();

  List<String> originaldata = [
    'Paris',
    'Tokyo',
    'Delhi',
    'Cairo',
    'Seoul',
    'Perth',
    'Milan',
    'Lima',
    'Dubai',
    'Oslo',
    'Sydney',
    'Berlin',
    'Athens',
    'Mumbai',
    'Rome',
    'Madrid',
    'Nairobi',
    'Moscow',
    'Bangkok',
    'Dallas',
    'London',
    'New York',
    'Beijing',
    'Toronto',
    'Stockholm',
    'Lisbon',
    'Vienna',
    'Copenhagen',
    'Amsterdam',
    'Prague',
    'Warsaw',
    'Budapest',
    'Brussels',
    'Dublin',
    'Helsinki',
    'Zurich',
    'Geneva',
    'Barcelona',
    'Kuala Lumpur',
    'Singapore',
    'Manila',
    'Jakarta',
    'Shanghai',
    'Seville',
    'Sofia',
    'San Francisco',
    'Santiago',
    'Syktyvkar',
    'Paris',
    'Tokyo',
    'Delhi',
    'Cairo',
    'Seoul',
    'Perth',
    'Milan',
    'Lima',
    'Dubai',
    'Oslo',
    'Sydney',
    'Berlin',
    'Athens',
    'Mumbai',
    'Rome',
    'Madrid',
    'Nairobi',
    'Moscow',
    'Bangkok',
    'Dallas',
    'London',
    'New York',
    'Beijing',
    'Toronto',
    'Stockholm',
    'Lisbon',
    'Vienna',
    'Copenhagen',
    'Amsterdam',
    'Prague',
    'Warsaw',
    'Budapest',
    'Brussels',
    'Dublin',
    'Helsinki',
    'Zurich',
    'Geneva',
    'Barcelona',
    'Kuala Lumpur',
    'Singapore',
    'Manila',
    'Jakarta'
  ];

  List<String> searchdata = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchdata = originaldata;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: textsearch,
                  onChanged: (e) {
                    if (textsearch.text.length == 0) {
                      setState(() {
                        searchdata = [];
                      });
                    }
                    if (e.length >= 1) {
                      setState(() {
                        searchdata = [];
                      });
                      if (originaldata
                          .contains(textsearch.text[0].toUpperCase() +
                              '' +
                              textsearch.text
                                  .substring(
                                    1,
                                  )
                                  .toLowerCase())) {
                        String val = textsearch.text[0].toUpperCase() +
                            '' +
                            textsearch.text
                                .substring(
                                  1,
                                )
                                .toLowerCase();
                        for (String i in originaldata) {
                          if (i == val) {
                            setState(() {
                              searchdata.add(i);
                            });
                          }
                        }
                      }

                      for (String i in originaldata) {
                        if (i[0].toLowerCase() ==
                            textsearch.text[0].toLowerCase()) {
                          setState(() {
                            searchdata.add(i);
                          });
                        }
                      }
                    }
                  },
                  autofocus: false,
                  style: TextStyle(color: Colors.deepPurple),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    constraints: BoxConstraints(),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                )),
                IconButton(onPressed: () {}, icon: Icon(Icons.search))
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(20),
                child: searchdata.length != 0
                    ? ListView.builder(
                        itemCount: searchdata.length,
                        itemBuilder: (context, index) {
                          return Text(
                            searchdata[index],
                            style: TextStyle(fontSize: 20),
                          );
                        },
                      )
                    : textsearch.text.length != 0 && searchdata.length == 0
                        ? Center(
                            child: Text('No Data Found!'),
                          )
                        : ListView.builder(
                            itemCount: originaldata.length,
                            itemBuilder: (context, index) {
                              return Text(
                                originaldata[index],
                                style: TextStyle(fontSize: 20),
                              );
                            },
                          )),
          )
        ],
      )),
    );
  }
}
