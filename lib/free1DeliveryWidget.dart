import 'package:flutter/material.dart';

class free1Delivery extends StatefulWidget {
  const free1Delivery({Key? key}) : super(key: key);

  @override
  State<free1Delivery> createState() => _free1DeliveryState();
}

class _free1DeliveryState extends State<free1Delivery> {
  int selected = 0;
  List all = ["All", "Burgers", "Pizza", "Sushi", "Thai", "Food", "Sushi"];
  List york = [
    "New York City pizza",
    "Italianoman",
    "john's Burgers",
    "SushiMaster",
    "john's Burgers",
  ];
  List abc = ["4.5", "4.9", "4.6", "4.4", "4.9"];
  List min = ["20 min", "25 min", "23 min", "35 min", "37 min"];
  List pizz = ["Pizza", "Italian", "Burgers", "Sushi", "Italian"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.orange,
          onTap: (value) {
            setState(
              () {},
            );
            selected = value;
          },
          elevation: 5,
          // showSelectedLabels: true,
          //showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: ""),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage("assets/images/menu.png"),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 40,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              label: "",
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "East 42nd st, New York",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 16),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.2,
                    bottom: 0.2,
                    right: 290,
                    child: CircleAvatar(
                      radius: 33,
                      backgroundColor: Colors.orangeAccent,
                      child: Icon(Icons.place, color: Colors.white, size: 27),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Divider(height: 2, color: Colors.black54),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "321",
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Restaurants",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.orange,
                    child: Text(
                      "0",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Filters",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                  Icon(Icons.arrow_back_ios_new)
                ],
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  7,
                  (index) => Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 45,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          all[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Divider(height: 2, color: Colors.black54),
            Expanded(
              child: ListView.separated(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 110,
                      width: 400,
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/111.jpg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Add(),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    york[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.star_border,
                                          color: Colors.white, size: 20),
                                      SizedBox(width: 5),
                                      Text(
                                        abc[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(width: 15),
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        min[index],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(width: 60),
                                      Text(
                                        pizz[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black38),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    if (index == 1) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 100,
                                width: 390,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 30),
                                    Text(
                                      "Get 10% ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Off Code",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 23,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -30,
                                left: 235,
                                child: Image.asset(
                                  "assets/images/25.png",
                                  scale: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }),
            )
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
  bool fat = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          fat = !fat;
        });
      },
      icon: fat == true
          ? Icon(
              Icons.favorite,
              size: 25,
              color: Colors.orange,
            )
          : Icon(
              Icons.favorite_border,
              size: 25,
              color: Colors.orange,
            ),
    );
  }
}
