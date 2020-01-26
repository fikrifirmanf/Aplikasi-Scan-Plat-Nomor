import 'package:flutter/material.dart';
import 'package:scan_plat/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scan Plat Nomor',
      home: Home(),
    );
  }
}
