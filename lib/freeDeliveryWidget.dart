import 'package:flutter/material.dart';

class freeDelivery extends StatefulWidget {
  const freeDelivery({Key? key}) : super(key: key);

  @override
  State<freeDelivery> createState() => _freeDeliveryState();
}

class _freeDeliveryState extends State<freeDelivery> {
  int select = 0;
  int selected = 0;
  List menu = ["Burgers", "Sushi", "Pizza"];
  List min = ["15 min", "30 min", "20 min"];
  List pizza = [
    "NYC Pizza",
    "John's Burgers",
    "Italian food",
    "NYC Pizza",
  ];
  List abc = [Colors.black, Colors.black, Colors.black];
  List image1 = [
    "assets/images/burger.png",
    "assets/images/26.png",
    "assets/images/pizza.png",
  ];
  List ima2 = [
    "assets/images/100.jpg",
    "assets/images/111.jpg",
    "assets/images/112.jpg",
    "assets/images/100.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(Icons.menu, size: 30),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Welome",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "mott",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.orange,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black12,
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
                  ],
                ),
              ),
              SizedBox(height: 15),
              Stack(
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
              SizedBox(height: 15),
              SizedBox(
                height: 180,
                width: 390,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    PageView.builder(
                      onPageChanged: (value) {
                        setState(
                          () {
                            select = value;
                          },
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 180,
                          width: 390,
                          decoration: BoxDecoration(
                            color: abc[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hot Deals",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Free\nDelivery",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32,
                                        color: Colors.orange),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/25.png",
                                    height: 180,
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Positioned(
                      top: 185,
                      right: 170,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 8),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: select == index
                                    ? Colors.amber
                                    : Colors.black12,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Favorites",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.orange, width: 2.5),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              SizedBox(
                height: 170,
                width: 390,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    PageView.builder(
                      onPageChanged: (value) {
                        setState(
                          () {
                            select = value;
                          },
                        );
                      },
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 170,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: List.generate(
                              3,
                              (index) => Center(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 7),
                                  height: 170,
                                  width: 115,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black12,
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        image1[index],
                                        height: 110,
                                      ),
                                      Text(
                                        menu[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        min[index],
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 8),
                    Positioned(
                      top: 170,
                      right: 175,
                      child: Row(
                        children: List.generate(
                          3,
                          (index) => Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 8),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: select == index
                                    ? Colors.amber
                                    : Colors.black12,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "Near you",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.orange, width: 2.5),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: List.generate(
                      4,
                      (index) => Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 110,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(ima2[index]),
                                        fit: BoxFit.cover)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 87, bottom: 75),
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: ccc(),
                                  ),
                                )),
                            Text(pizza[index])
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
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
    );
  }
}

class ccc extends StatefulWidget {
  const ccc({Key? key}) : super(key: key);

  @override
  State<ccc> createState() => _cccState();
}

class _cccState extends State<ccc> {
  bool fav2 = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          fav2 = !fav2;
        });
      },
      icon: fav2 == true
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
