import 'package:flutter/material.dart';

class Organic2 extends StatefulWidget {
  const Organic2({Key? key}) : super(key: key);

  @override
  State<Organic2> createState() => _Organic2State();
}

class _Organic2State extends State<Organic2> {
  List menu = ["Peach", "Basil", "Pumpkin", "Tomato"];

  List text = ["Spain", "Italy", "Ukraine", "Holland"];

  List mrp = ["\$3.15", "\$1.15", "\$3.50", "\$5.75"];

  List kg = ["(Kg)", "(Pc)", "(Kg)", "(Kg)"];

  List asse = [
    "assets/images/15.png",
    "assets/images/16.png",
    "assets/images/17.png",
    "assets/images/18.png",
  ];
  List colre = [
    Color(0xffffc9b1),
    Color(0xffd4ffcf),
    Color(0xfffee299),
    Color(0xfffea9a4),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(245),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios, size: 30),
                  SizedBox(width: 15),
                  Text(
                    "My Cart",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/id.png", scale: 4),
                    decoration: BoxDecoration(
                      color: Color(0xffbab63b),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 110,
              width: 415,
              decoration: BoxDecoration(
                color: Color(0xffbab63b),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      "Total:",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Text(
                          "\$13.90",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(width: 90),
                      Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 19,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
