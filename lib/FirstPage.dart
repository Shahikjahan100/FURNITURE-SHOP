import "package:dots_indicator/dots_indicator.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final PageController _pageController = PageController();
  double currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.60;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: containerHeight,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade800,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                image: const DecorationImage(
                    image: AssetImage('assets/1.jpg'), fit: BoxFit.cover),
              ),
              child: Stack(
                children: [
                  // PageView(
                  //   controller: _pageController,
                  //   children: [
                  //     Image.asset('assets/1.jpg', fit: BoxFit.fitHeight),
                  //     Image.asset('assets/2.jpg', fit: BoxFit.cover),
                  //     Image.asset('assets/3.jpg', fit: BoxFit.cover),
                  //     Image.asset('assets/4.jpg', fit: BoxFit.cover),
                  //     // Add more images here
                  //   ],
                  // ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: DotsIndicator(
                      dotsCount: 4, // Number of images
                      position: currentPage,
                      decorator: DotsDecorator(
                        color: Colors.blueGrey.shade800, // Inactive dot color
                        activeColor: Colors.white, // Active dot color
                        size: const Size(10, 10),
                        activeSize: const Size(14, 14),
                        spacing: EdgeInsets.all(4),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //ADDING ITEM'S NAME AND PRICE
            Container(
              margin: EdgeInsets.all(40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Item's Name",
                    style: GoogleFonts.nunitoSans(
                        fontSize: 30,
                        color: Colors.blueGrey.shade800,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money_rounded,
                        size: 30,
                      ),
                      Text(
                        "30",
                        style: GoogleFonts.nunitoSans(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //ADDING DESCRIPTION
            Container(
              margin: const EdgeInsets.only(left: 40, right: 30),
              child: Text(
                "Designed with the utmost consideration for the sake  relaxation and style, the ErgoComfort Lounge Chair is the epitome of comfort.",
                style: GoogleFonts.nunitoSans(
                  color: Colors.blueGrey.shade300,
                ),
              ),
            ),
            //ADDING CHOOSE COLOR OPTION
            Container(
              margin: const EdgeInsets.only(left: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Color",
                    style: GoogleFonts.nunitoSans(
                      color: Colors.blueGrey.shade800,
                      fontSize: 20,
                    ),
                  ),
                  //ADDING COLORS OPTIONS
                  Row(
                    children: [
                      //FIRST COLOR
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade800,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                      ),
                      //SECOND COLOR
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                      ),
                      //THIRD COLOR
                      Container(
                        margin: const EdgeInsets.only(right: 40),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.pink.shade200,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //ADDING BUTTON
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.only(top: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade800,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    minimumSize: Size(220, 60)),
                onPressed: () {},
                child: Text(
                  "+ Add to cart",
                  style: GoogleFonts.nunitoSans(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
