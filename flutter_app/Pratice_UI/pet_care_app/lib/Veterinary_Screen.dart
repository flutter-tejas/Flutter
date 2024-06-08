import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_care_app/Doctor_Screen.dart';

class Veterinary_Screen extends StatefulWidget {
  const Veterinary_Screen({super.key});

  @override
  State<Veterinary_Screen> createState() => _Veterinary_ScreenState();
}

class _Veterinary_ScreenState extends State<Veterinary_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "London, UK",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Container(
                width: 390,
                height: 98,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(245, 146, 69, 1),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 8),
                      blurRadius: 16,
                      spreadRadius: -4,
                      color: Color.fromRGBO(22, 34, 51, 0.08),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Let Find Specialist",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "Doctor for Your Pet!",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 11),
                              blurRadius: 25,
                              color: Color.fromRGBO(22, 34, 51, 0.08),
                            ),
                          ],
                          image: const DecorationImage(
                              image: AssetImage("assets/image (6).png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                      gapPadding: 4,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromRGBO(245, 146, 69, 1),
                      ),
                    ),
                    hintText: "Search ",
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: const Color.fromRGBO(194, 195, 204, 1),
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Our Services ",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromRGBO(194, 195, 204, 1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("assets/image (22).png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Vaccinations",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("assets/image (7).png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Operations",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("assets/image (8).png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Behaviorals",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage("assets/image (9).png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Dentistry",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(245, 146, 69, 1),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bext Specialists Nearby",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Doctor_Screen();
                    }));
                  },
                  child: Container(
                    width: 390,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 8),
                          blurRadius: 16,
                          spreadRadius: -4,
                          color: Color.fromRGBO(22, 34, 51, 0.08),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 170,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage("assets/image (10).png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dr. Anna Johanson",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              Text(
                                "Veterinary Behavioral",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: const Color.fromRGBO(194, 195, 204, 1),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  Text(
                                    "4.8",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          194, 195, 204, 1),
                                    ),
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    color: Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                  Text(
                                    "1 km ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(
                                          194, 195, 204, 1),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  width: 390,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage("assets/image (11).png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dr. Vernon Chwe",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Text(
                              "Veterinary Surgery",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(194, 195, 204, 1),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text(
                                  "4.9",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text(
                                  "1.5 km ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  width: 390,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 16,
                        spreadRadius: -4,
                        color: Color.fromRGBO(22, 34, 51, 0.08),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 170,
                          width: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: -4,
                                color: Color.fromRGBO(22, 34, 51, 0.08),
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage("assets/image (23).png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Dr. Maria Nai",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Text(
                              "Veterinary Dentist ",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(194, 195, 204, 1),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text(
                                  "4.9",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                ),
                                Text(
                                  "2.5 km ",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color:
                                        const Color.fromRGBO(194, 195, 204, 1),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Color.fromRGBO(126, 128, 143, 1),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: Color.fromRGBO(126, 128, 143, 1),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
                Text(
                  'Service',
                  style: TextStyle(
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 60,
            ),
            Column(
              children: [
                Icon(
                  Icons.history,
                  size: 30,
                  color: Color.fromRGBO(126, 128, 143, 1),
                ),
                Text(
                  'History',
                  style: TextStyle(
                    color: Color.fromRGBO(126, 128, 143, 1),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person_2_outlined,
                  size: 30,
                  color: Color.fromRGBO(126, 128, 143, 1),
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Color.fromRGBO(126, 128, 143, 1),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: Color(0xffF59245),
          elevation: 0,
          onPressed: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              Text(
                'Shop',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
