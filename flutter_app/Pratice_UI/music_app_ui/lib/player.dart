import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/272cf15a08dcca3bd22e258e7635e9c2 1.png",
                fit: BoxFit.contain,
              ),
              Positioned(
                top: 450,
                left: 94,
                child: Column(
                  children: [
                    Text(
                      "Alone in the Abyss",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color.fromRGBO(230, 154, 21, 1),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Youlakou",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.file_download_done_outlined,
                          color: Color.fromRGBO(230, 154, 21, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Dynamic Warmup | ",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Spacer(),
                Text(
                  "4 min",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearPercentIndicator(
                  width: 400,
                  lineHeight: 6,
                  percent: 0.3,
                  backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                  barRadius: Radius.circular(15),
                  progressColor: Color.fromRGBO(230, 154, 21, 1),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  size: 25,
                  Icons.repeat_one_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                Icon(
                  size: 25,
                  Icons.skip_previous_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                Icon(
                  size: 50,
                  Icons.play_circle_fill,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                Icon(
                  size: 25,
                  Icons.skip_next_rounded,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                Icon(
                  size: 25,
                  Icons.volume_down,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(19, 19, 19, 1),
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(
          color: Color.fromRGBO(157, 178, 206, 1),
        ),
        selectedLabelStyle: TextStyle(
          color: Color.fromRGBO(230, 154, 21, 1),
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(230, 154, 21, 1),
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
              Icons.shopping_basket,
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
      ),
    );
  }
}
