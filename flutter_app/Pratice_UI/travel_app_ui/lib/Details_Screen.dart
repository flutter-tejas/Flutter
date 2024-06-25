import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/View_Screen.dart';
import 'package:travel_app_ui/home_page.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({super.key});

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/49024100a89c01bb1b2bacc523162e75.jpeg",
            height: double.maxFinite,
            width: 450,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 56, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return const Home_Page();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 30, 40, 1),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 20,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                Text(
                  "Details",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Opacity(
                  opacity: 0.16,
                  child: Container(
                    height: 44,
                    width: 44,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(27, 30, 40, 1),
                    ),
                    child: const Icon(
                      Icons.bookmark_outline_rounded,
                      size: 24,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 500,
            child: Container(
              height: 461,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(1000, 200),
                  topRight: Radius.elliptical(1000, 200),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Opacity(
                          opacity: 0.20,
                          child: Container(
                            height: 5,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Color.fromRGBO(125, 132, 141, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Niladri Reservoir",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                color: const Color.fromRGBO(27, 30, 40, 1),
                              ),
                            ),
                            Text(
                              "Tekergat,Sunamgnj",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: const Color.fromRGBO(125, 132, 141, 1),
                              ),
                            )
                          ],
                        ),
                        Image.asset("assets/Ellipse 25.png")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 13.33,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                        Text(
                          "Tekergat",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 11.64,
                          color: Color.fromRGBO(255, 211, 54, 1),
                        ),
                        Spacer(),
                        Text(
                          "4.9",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(27, 30, 40, 1),
                          ),
                        ),
                        Text(
                          "(2498)",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\$59/",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(13, 110, 253, 1),
                          ),
                        ),
                        Text(
                          "Person",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            color: const Color.fromRGBO(125, 132, 141, 1),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/Rectangle 822.png"),
                        Image.asset("assets/Rectangle 823.png"),
                        Image.asset("assets/Rectangle 824.png"),
                        Image.asset("assets/Rectangle 825.png"),
                        Image.asset("assets/Rectangle 826.png"),
                      ],
                    ),
                    Text(
                      "About Destination",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: const Color.fromRGBO(27, 30, 40, 1),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(125, 132, 141, 1),
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                              text:
                                  'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Have you ever been on holiday to the Greek ETC...  '),
                          WidgetSpan(
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Text(
                                    'Read More',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(255, 112, 41, 1),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 65,
                        width: 335,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return const View_Screen();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          child: Text(
                            'Book Now',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
