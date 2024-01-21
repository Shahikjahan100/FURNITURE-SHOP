import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.30;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          //ADDING FIRST CONTAINER
          Container(
            color: Colors.blueGrey.shade800,
            height: containerHeight,
            child: Column(
              children: [
                //ADDING TEXT AND ICON
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //ADDING TEXT
                    Container(
                      margin: EdgeInsets.only(top: 60, left: 30),
                      child: Text(
                        "Welcome to shop",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.white70,
                          fontSize: containerHeight * 0.10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //ADDING ICON
                    Container(
                      margin: EdgeInsets.only(top: 60, left: 30),
                      child: const Icon(
                        EvaIcons.menu2Outline,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
                //ADDING TEXTFIELD OR SEARCHBAR
                Container(
                  margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blueGrey.shade300,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          EvaIcons.search,
                          color: Colors.blueGrey.shade800,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //ADDING DIFFERENT ROOMS TYPE
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade300,
                borderRadius: BorderRadius.circular(20)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Kitchen",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.blueGrey.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Bedroom",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Hallway",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Lounge",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Dinning Room",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Gallery",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //ADDING CATEGORIES AND SEE-ALL TEXT
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Categories",
                  style: GoogleFonts.nunitoSans(
                      color: Colors.blueGrey.shade800,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.nunitoSans(
                    color: Colors.blueGrey.shade800,
                  ),
                ),
              ],
            ),
          ),
          //ADDING SCROLLABLE ICONS AND TEXT
          Container(
            margin: const EdgeInsets.only(top: 20, left: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey.shade300,
                        ),
                        child: const Icon(
                          Icons.chair_alt,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 1),
                        child: Text(
                          "Chairs",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.blueGrey.shade800,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey.shade300,
                        ),
                        child: const Icon(
                          Icons.bed,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Beds",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey.shade300,
                        ),
                        child: const Icon(
                          Icons.table_restaurant_rounded,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Tables",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey.shade300,
                        ),
                        child: const Icon(
                          Icons.chair,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Sofas",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueGrey.shade300,
                        ),
                        child: const Icon(
                          EvaIcons.umbrella,
                          color: Colors.white70,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Umbrella",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          //ADDING NEW-ITEMS
          Container(
            margin: const EdgeInsets.only(top: 30, left: 40),
            child: Row(
              children: [
                Text(
                  "New items",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.shade800,
                  ),
                ),
              ],
            ),
          ),
          //ADDING CHAIRS IMAGES
          Container(
            margin: const EdgeInsets.only(top: 20, left: 40),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      //IMAGE-1
                      Container(
                        height: containerHeight * 0.70,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/2.jpg'),
                          ),
                        ),
                      ),
                      Text(
                        "Item's Name",
                        style: GoogleFonts.nunitoSans(
                          color: Colors.blueGrey.shade300,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            color: Colors.blueGrey.shade800,
                          ),
                          Text(
                            "25",
                            style: GoogleFonts.nunitoSans(
                              color: Colors.blueGrey.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  //SECOND IMAGE
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        //IMAGE-1
                        Container(
                          height: containerHeight * 0.70,
                          width: 125,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade800,
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/5.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          "Item's Name",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.blueGrey.shade800,
                            ),
                            Text(
                              "35",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade800,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  //THIRD IMAGE
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        //IMAGE-1
                        Container(
                          height: containerHeight * 0.70,
                          width: 125,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey.shade800,
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                              image: AssetImage('assets/4.jpg'),
                            ),
                          ),
                        ),
                        Text(
                          "Item's Name",
                          style: GoogleFonts.nunitoSans(
                            color: Colors.blueGrey.shade300,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.blueGrey.shade800,
                            ),
                            Text(
                              "55",
                              style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade800,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
