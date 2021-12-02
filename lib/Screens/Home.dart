// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final name = ['Hammad', 'Azhar', 'Bilal', 'Ahmad', 'Imran', 'Nisar'];
    final contact = [
      '+92-345478585',
      '+92-345858552',
      '+92-312477745',
      '+92-312578455',
      '+92-398989888',
      '+92-033222523'
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 10),
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(
                height: 0.2,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                labelText: "Search",
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListTileTheme(
                iconColor: Colors.blue,
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.white,
                          elevation: 3,
                          child: ListTile(
                              title: Text(
                                name[index].toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.5),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Text(
                                  contact[index].toString(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      letterSpacing: 0.5),
                                ),
                              ),
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.blueAccent[400],
                                child: Text(name[index][0],
                                    style: TextStyle(fontSize: 20)),
                              ),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  PopupMenuButton(
                                    itemBuilder: (context) {
                                      return [
                                        PopupMenuItem(
                                          value: 'edit',
                                          child: Text('Edit'),
                                        ),
                                        PopupMenuItem(
                                          value: 'delete',
                                          child: Text('Delete'),
                                        )
                                      ];
                                    },
                                  ),
                                  Icon(Icons.call)
                                ],
                              )),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
