import 'package:flutter/material.dart';

class food2 extends StatefulWidget {
  const food2({Key? key}) : super(key: key);

  @override
  State<food2> createState() => _food2State();
}

class _food2State extends State<food2> {
  List image = [
    "assets/images/23.jpg",
    "assets/images/24.jpg",
  ];
  List tex = ["Big Mad Burger", "Pineaple Pork"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffeeeeee),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: 415,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      "Order details",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      child: Icon(Icons.question_mark),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Heaven's food",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(
                        Icons.access_alarms,
                        color: Colors.amber,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Delivery / As soon as possible",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.amber,
                        size: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "800 Cheese avenue, NYC",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 500,
              width: 415,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Your order",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "See menu",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: List.generate(
                        2,
                        (index) => Center(
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                margin: EdgeInsets.symmetric(vertical: 20),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      image[index],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tex[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$24.60",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Add(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Subltotal",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black38,
                              fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "\$ 37.50",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "Delivery",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black38,
                              fontSize: 15),
                        ),
                        Spacer(),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Free",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
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
                          "Total",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          "\$37.50",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
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
                    "Place order",
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
  int denishh = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkResponse(
          onTap: () {
            setState(() {
              denishh++;
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 10),
        Text("$denishh"),
        SizedBox(width: 10),
        InkResponse(
          onTap: () {
            setState(() {
              if (denishh > 0) {
                denishh--;
              }
            });
          },
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.orange),
            child: Icon(
              Icons.remove,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
