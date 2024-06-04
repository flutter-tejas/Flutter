import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/player.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/111 1.png",
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 225,
                left: 20,
                child: Column(
                  children: [
                    Text(
                      "A.L.O.N.E",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 37,
                      width: 127,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(19),
                        ),
                        color: Color.fromRGBO(255, 46, 0, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Subscribe",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color.fromRGBO(19, 19, 19, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 7,
                width: 21,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                  color: Color.fromRGBO(255, 46, 0, 1),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                  color: Color.fromRGBO(159, 159, 159, 1),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22),
                  ),
                  color: Color.fromRGBO(159, 159, 159, 1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Discography",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromRGBO(255, 46, 0, 1),
                  ),
                ),
                Spacer(),
                Text(
                  "See all",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(248, 162, 69, 1),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 119,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Rectangle 32.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Dead inside",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      Text(
                        "2020",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(132, 125, 125, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return Player();
                          }),
                        ),
                        child: Container(
                          height: 140,
                          width: 119,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Rectangle 38.png"),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Alone",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      Text(
                        "2023",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(132, 125, 125, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 119,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/Rectangle 39.png",
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Heartless",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      Text(
                        "2023",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Color.fromRGBO(132, 125, 125, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Popular singles",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(203, 200, 200, 1),
                  ),
                ),
                Spacer(),
                Text(
                  "See all",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(248, 162, 69, 1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Rectangle 34.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "We Are Chaos",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "200 ",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color.fromRGBO(203, 200, 200, 1),
                                    ),
                                  ),
                                  Text(
                                    " Easy Living",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 72,
                          width: 67,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Rectangle 40.png"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Smile",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color.fromRGBO(203, 200, 200, 1),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "200 ",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                    ),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: Color.fromRGBO(203, 200, 200, 1),
                                    ),
                                  ),
                                  Text(
                                    " Berrechid",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: Color.fromRGBO(132, 125, 125, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_vert,
                          color: Color.fromRGBO(217, 217, 217, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket_sharp,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(157, 178, 206, 1),
            ),
            label: 'Profile',
          ),
        ],
        backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      ),
    );
  }
}
