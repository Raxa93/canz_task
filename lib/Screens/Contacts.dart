// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Contacts page'),
    );
  }
}
