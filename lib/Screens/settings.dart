// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(settings());
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Generate some dummy data

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Settings'));
  }
}
