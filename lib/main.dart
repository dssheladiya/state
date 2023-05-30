import 'package:flutter/material.dart';
import 'EdekaWidget.dart';
import 'Edeka1Widget.dart';
import 'OrganicfoodWidget.dart';
import 'Organicfood1Widget.dart';
import 'Organicfood2Widget.dart';
import 'foodWidget.dart';
import 'food1Widget.dart';
import 'food2Widget.dart';
import 'freeDeliveryWidget.dart';
import 'free1DeliveryWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: edeka1(),
    );
  }
}
