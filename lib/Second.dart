import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWidth = MediaQuery.of(context).size.width;
    double containerHeight = screenHeight * 0.20;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            //ADDIND FIRST CONTAINER OR NAVBAR
            Container(
              height: containerHeight,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade800,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //ADDING BACK ARROW
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Icon(
                      EvaIcons.arrowIosBackOutline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  //ADDING TEXT OF CHAIRS
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Chairs",
                      style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //ADDING SETTING ICON
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const Icon(
                      EvaIcons.options2Outline,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            //ADDING IMAGES
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      //FIRST IMAGE
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                height: screenHeight * 0.25,
                                width: 200,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/1.jpg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 30,
                                left: 140,
                                child: Icon(
                                  EvaIcons.heartOutline,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Item's Name",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.blueGrey.shade800,
                              ),
                              Text(
                                "25",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      //SECOND IMAGE
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 30, left: 20),
                                height: screenHeight * 0.25,
                                width: 140,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 30,
                                left: 130,
                                child: Icon(
                                  EvaIcons.heartOutline,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Item's Name",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.blueGrey.shade800,
                              ),
                              Text(
                                "35",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  //SECOND PART AND TWO MORE IMAGES
                  Row(
                    children: [
                      //FIRST IMAGE
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 30),
                                height: screenHeight * 0.25,
                                width: 200,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage('assets/5.jpg'),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 30,
                                left: 140,
                                child: Icon(
                                  EvaIcons.heartOutline,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Item's Name",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.blueGrey.shade800,
                              ),
                              Text(
                                "55",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      //SECOND IMAGE
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 30, left: 20),
                                height: screenHeight * 0.25,
                                width: 140,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 30,
                                left: 130,
                                child: Icon(
                                  EvaIcons.heartOutline,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Item's Name",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.blueGrey.shade300,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money_outlined,
                                color: Colors.blueGrey.shade800,
                              ),
                              Text(
                                "45",
                                style: GoogleFonts.nunitoSans(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
