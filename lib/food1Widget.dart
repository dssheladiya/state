import 'package:flutter/material.dart';

class food1 extends StatefulWidget {
  const food1({Key? key}) : super(key: key);

  @override
  State<food1> createState() => _food1State();
}

class _food1State extends State<food1> {
  List images = [
    "assets/images/23.jpg",
    "assets/images/24.jpg",
    "assets/images/23.jpg",
    "assets/images/24.jpg",
  ];
  int select = 0;
  int home = 0;

  List tex = [
    "Potato wedges",
    "Corn on the cob",
    "Potato wedges",
    "Corn on the cob"
  ];
  List texs = [
    "Recommended",
    "Recommended",
    "Recommended",
    "Recommended",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeeeeee),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                children: [
                  PageView.builder(
                    onPageChanged: (value) {
                      setState(
                        () {
                          select = value;
                        },
                      );
                    },
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 350,
                        width: 415,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  Positioned(
                    top: 330,
                    left: 150,
                    child: Row(
                      children: List.generate(
                        4,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 6,
                            backgroundColor:
                                select == index ? Colors.amber : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Colors.black38,
                          child: Add(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Big Mad Burger",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Potato Bun, cheddar cheese, beef, cucumber, red",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                    fontSize: 15),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "onion, iceberg lettuce, avocado, tomato",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black38,
                    fontSize: 15),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Choose addition ",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Required",
                    style: TextStyle(
                        color: Colors.black38, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.keyboard_arrow_up_outlined,
                        color: Colors.black38),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 162,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: List.generate(
                    4,
                    (index) => Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  home = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 15),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: home == index
                                        ? Colors.amber
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2,
                                        color: home == index
                                            ? Colors.amber
                                            : Colors.grey)),
                                child: Icon(
                                  Icons.check_rounded,
                                  size: 20,
                                  color: home == index
                                      ? Colors.white
                                      : Colors.transparent,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              children: [
                                Text(
                                  tex[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                Text(
                                  texs[index],
                                  style: TextStyle(
                                    color: home == index
                                        ? Colors.orange
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 50),
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff303030),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Add(1) to cart - 12.90",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21),
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
          ? Center(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
            )
          : Center(
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 30,
              ),
            ),
    );
  }
}
