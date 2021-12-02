// ignore_for_file: prefer_const_constructors

import 'package:canz_task/Screens/Contacts.dart';
import 'package:canz_task/Screens/Home.dart';
import 'package:canz_task/Screens/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int index = 0;
  final screens = [HomeScreen(), Contacts(), settings()];

  final items = <Widget>[
    Icon(Icons.home, size: 25),
    Icon(Icons.contact_mail, size: 25),
    Icon(Icons.settings, size: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Material(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () {},
                  child:
                      SizedBox(width: 20, height: 20, child: Icon(Icons.menu)),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Main',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.blue,
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () {},
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child:
                            Icon(Icons.no_encryption_gmailerrorred_outlined)),
                  ),
                ),
              ),
            )
          ],
        ),
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(iconTheme: IconThemeData(color: Colors.white)),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Colors.blue,
            items: items,
            index: index,
            height: 50,
            onTap: (index) => setState(() {
              this.index = index;
            }),
          ),
        ));
  }
}
