import 'package:flutter/material.dart';

class food extends StatefulWidget {
  const food({Key? key}) : super(key: key);

  @override
  State<food> createState() => _foodState();
}

class _foodState extends State<food> {
  int select = 0;
  List men = ["Pasta", "Sushi", "Salads", "Food"];
  List image = [
    "assets/images/19.png",
    "assets/images/20.png",
    "assets/images/21.png",
    "assets/images/22.png",
  ];
  List denish = [
    "assets/images/23.jpg",
    "assets/images/24.jpg",
    "assets/images/23.jpg",
  ];
  List food = ["Heaven's Food", "Grill Hell Hous food", "Heaven's Food"];
  List pop = ["4.5", "4.9", "4.1"];

  List min = ["25-30 min   \$\$\$", "40-50 min   \$\$\$", "50-65 min  \$\$\$"];
  List grill = ["Steak", "Grill", "Steak"];
  List fish = ["Fish", "Meat", "Fish"];
  List exp = ["Experimental", "Experimental", "Experimental"];
  List ico = [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.person_outline,
  ];
  List tex = ["Home", "Orders", "Profille"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeeeeee),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.amberAccent,
                          size: 27,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "800 Cheese avenue,",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        Text(
                          "NYC",
                          style: TextStyle(color: Colors.black38),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 60,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Color(0xfffeeeeee),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search,
                                size: 30, color: Colors.black38),
                            hintText: "Search for food",
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Something new",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  4,
                  (index) => Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      height: 200,
                      width: 130,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Color(0xffffa012),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Text(
                              men[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Positioned(
                            top: 80,
                            left: 35,
                            child: Image.asset(
                              image[index],
                              height: 145,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 26),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(
                  3,
                  (index) => Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 280,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(0xfffeeeeee),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xfffeeeeee),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  denish[index],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 200,
                            left: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 170),
                                  child: Text(
                                    food[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.only(right: 100),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        pop[index],
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.access_time_filled,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        min[index],
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 3),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          grill[index],
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 30,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          fish[index],
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Container(
                                      height: 30,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          exp[index],
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15),
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
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 86,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  3,
                  (index) => Column(
                    children: [
                      SizedBox(height: 10),
                      InkResponse(
                        onTap: () {
                          setState(() {});
                          select = index;
                        },
                        child: Icon(
                          ico[index],
                          size: 35,
                          color:
                              select == index ? Colors.orange : Colors.black38,
                        ),
                      ),
                      Text(
                        tex[index],
                        style: TextStyle(
                            color: select == index
                                ? Colors.black
                                : Colors.black38),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
