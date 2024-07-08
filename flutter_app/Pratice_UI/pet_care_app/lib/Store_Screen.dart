import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Store_Screen extends StatefulWidget {
  const Store_Screen({super.key});

  @override
  State<Store_Screen> createState() => _Store_ScreenState();
}

class _Store_ScreenState extends State<Store_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: 160,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hello Sarah",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        "Find your Lovable Pets",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 40,
            right: 40,
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(
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
                filled: true,
                fillColor: const Color.fromRGBO(255, 255, 255, 1),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: Color.fromRGBO(250, 200, 162, 1),
                  ),
                ),
                hintText: "Search Something Here ",
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
            ),
          ),
          Positioned(
            top: 197,
            left: 50,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 173,
                      width: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(245, 146, 69, 1),
                        image: DecorationImage(
                          image: AssetImage("assets/image (4).png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4,
                              color: Color.fromRGBO(22, 34, 51, 0.08))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 149,
                      width: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(245, 146, 69, 1),
                        image: DecorationImage(
                          image: AssetImage("assets/image (5).png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4,
                              color: Color.fromRGBO(22, 34, 51, 0.08))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 149,
                      width: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(245, 146, 69, 1),
                        image: DecorationImage(
                          image: AssetImage("assets/image (5).png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4,
                              color: Color.fromRGBO(22, 34, 51, 0.08))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 173,
                      width: 154,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(245, 146, 69, 1),
                        image: DecorationImage(
                          image: AssetImage("assets/image (4).png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 8),
                              blurRadius: 16,
                              spreadRadius: -4,
                              color: Color.fromRGBO(22, 34, 51, 0.08))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomAppBar(
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
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          backgroundColor: const Color(0xffF59245),
          elevation: 0,
          onPressed: () {},
          child: const Column(
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
