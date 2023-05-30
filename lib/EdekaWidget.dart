import 'package:flutter/material.dart';

class edeka extends StatefulWidget {
  const edeka({Key? key}) : super(key: key);

  @override
  State<edeka> createState() => _edekaState();
}

class _edekaState extends State<edeka> {
  List image = [
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/6.png",
    "assets/images/9.png",
    "assets/images/9.png",
  ];
  List imag = [
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
  ];
  List lemon = ["Lemon", "Banana", "Grape", "Orange"];
  List tex = ["Bakery", "Fruits", "Vegetables", "Milk", "Food"];
  List ltaly = [
    "Bergamo ltaly",
    "Cattier ltaliano",
    "Cattier ltaliano",
    "Cattier ltaliano"
  ];
  List mrp = ["€ 1.10", "€ 1.10", "€ 1.10", "€ 1.10"];
  List mrp1 = ["€2", "€3", "€4", "€3.10"];
  List color = [
    Colors.deepOrange,
    Colors.transparent,
    Colors.transparent,
    Colors.deepOrange
  ];
  int selected = 0;
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.menu, size: 40, color: Colors.black38),
                  SizedBox(width: 70),
                  Image.asset("assets/images/1.png", scale: 8),
                  SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.arrow_forward_ios_outlined,
                        color: Colors.blue),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10)),
                    child: Add(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 290,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, size: 30),
                        hintText: "Search product here",
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(Icons.remove_road_sharp, color: Colors.black38),
                ),
              ],
            ),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => Center(
                        child: InkResponse(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: selected == index
                                    ? Colors.green.shade400
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1, color: Colors.black38)),
                            child: Image.asset(
                              image[index],
                              scale: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: List.generate(
                      5,
                      (index) => Center(
                        child: Container(
                          height: 25,
                          width: 80,
                          //  color: Colors.white,
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Center(
                            child: Text(
                              tex[index],
                              style: TextStyle(
                                  color: selected == index
                                      ? Colors.black
                                      : Colors.black38),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Stack(
                  children: [
                    GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 30,
                          childAspectRatio: 0.63),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 280,
                                  width: 200,
                                  margin: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 120),
                                        child: Add(),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Image.asset(
                                          imag[index],
                                          scale: 3.5,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Stack(
                                            clipBehavior: Clip.none,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(lemon[index],
                                                      style: TextStyle(
                                                          // color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 20)),
                                                  SizedBox(height: 10),
                                                  Text(ltaly[index],
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 17)),
                                                  SizedBox(height: 10),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        mrp[index],
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.green),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        mrp1[index],
                                                        style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Positioned(
                                                right: -20,
                                                bottom: 0,
                                                child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        Colors.green.shade400,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(10),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20)),
                                                  ),
                                                  child: Icon(Icons.add,
                                                      size: 30,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                      color: color[index],
                                    ),
                                    child: Center(
                                      child: Text(
                                        "25% off",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                    Positioned(
                      top: 490,
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 380,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(2, 2),
                                    blurRadius: 15)
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text(
                                    "Total:",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black54),
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "3ⅹ €49.5",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 69),
                                  Container(
                                    height: 70,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 20),
                                        Text(
                                          "Cart",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 10),
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  bool like = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            like = !like;
          });
        },
        icon: like == true
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 30,
              ));
  }
}
