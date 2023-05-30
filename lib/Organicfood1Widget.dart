import 'package:flutter/material.dart';

class Organic1 extends StatefulWidget {
  const Organic1({Key? key}) : super(key: key);

  @override
  State<Organic1> createState() => _Organic1State();
}

class _Organic1State extends State<Organic1> {
  List imag = [
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/6.png",
    "assets/images/9.png",
  ];
  List menu = ["Vegetables", "Fruits", "Greens", "Mushrooms"];

  List color = [
    Color(0xfffde9b4),
    Color(0xffffd8d3),
    Color(0xffffefd6),
    Color(0xffe6f99f),
  ];
  List image = [
    "assets/images/11.png",
    "assets/images/12.png",
    "assets/images/13.png",
    "assets/images/14.png",
  ];
  List food = ["Banana", "Strawberry", "Champignon", "Kiwi"];

  List text = ["Ecuador", "Holland", "Ukraine", "New Zealand"];

  List mrp = ["\$1.50", "\$23.10", "\$3.55", "\$2.30"];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(245),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 230,
                  width: 415,
                  decoration: BoxDecoration(
                    color: Color(0xffbab63b),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.menu, size: 35),
                            Spacer(),
                            Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 7),
                                  Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.black,
                                    size: 35,
                                  ),
                                  SizedBox(width: 7),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    child: Center(
                                      child: Text(
                                        "4",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffbab63b),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              height: 50,
                              width: 50,
                              child:
                                  Image.asset("assets/images/id.png", scale: 4),
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 60,
                        width: 380,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,
                                  size: 30, color: Colors.black38),
                              hintText: "Search foodstuffs",
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 170),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: List.generate(
                          4,
                          (index) => Center(
                            child: InkResponse(
                              onTap: () {
                                setState(() {
                                  selected = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: selected == index
                                      ? Colors.green.shade200
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      imag[index],
                                      height: 60,
                                      color: selected == index
                                          ? Colors.black
                                          : Color(0xffbab63b),
                                    ),
                                    Spacer(),
                                    Text(
                                      menu[index],
                                      style: TextStyle(
                                          color: selected == index
                                              ? Colors.black
                                              : Color(0xffbab63b),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Popular Foodstuffs",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 27),
                  ),
                  Spacer(),
                  Text(
                    "View all >",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.green.shade200,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        childAspectRatio: 0.70),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                color: color[index],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(image[index], height: 150),
                                  Text(
                                    food[index],
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    text[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black38),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        mrp[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.add_box,
                                        color: Colors.green,
                                        size: 43,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
