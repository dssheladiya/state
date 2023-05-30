import 'package:flutter/material.dart';

class Organic extends StatefulWidget {
  const Organic({Key? key}) : super(key: key);

  @override
  State<Organic> createState() => _OrganicState();
}

class _OrganicState extends State<Organic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 844,
              width: 415,
              color: Colors.green,
            ),
            //  Text("Get/nOrganic Food"),
          ],
        ),
      ),
    );
  }
}
