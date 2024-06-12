import 'package:bicycle_app_ui/Screen3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomRight,
                stops: [0.1, 0.0],
                colors: [
                  Color.fromRGBO(36, 44, 59, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
              ),
            ),
          ),
          Positioned(
            top: 340,
            child: Transform.rotate(
              angle: 90 * 3.1415926535897931 / 180,
              child: Text(
                "EXTREME",
                style: GoogleFonts.allertaStencil(
                  fontSize: 150,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.2),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 18,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Your",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Text(
                      "Bicycle",
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 150,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(55, 182, 233, 1),
                        Color.fromRGBO(72, 92, 236, 1),
                        Color.fromRGBO(75, 76, 237, 1),
                      ],
                    ),
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 30,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 20,
            child: Container(
              height: 250,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(53, 63, 84, 0.5).withOpacity(1),
                    const Color.fromRGBO(34, 40, 52, 0.5).withOpacity(1),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(4, 7),
                    blurRadius: 10,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/pngwing (1).png"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "EXTREME",
                        style: GoogleFonts.allertaStencil(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        "30% OFF",
                        style: GoogleFonts.allertaStencil(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 20,
            child: SizedBox(
              height: 50,
              width: 282,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(55, 182, 233, 1),
                          Color.fromRGBO(72, 92, 236, 1),
                          Color.fromRGBO(75, 76, 237, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/image 2 (1).png",
                        height: 28,
                        width: 37,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/image 1.png",
                        height: 28,
                        width: 37,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/image 3.png",
                        height: 28,
                        width: 37,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 1),
                          Color.fromRGBO(161, 161, 161, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/image 4.png",
                        height: 28,
                        width: 37,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 20,
            right: 20,
            child: Container(
              height: 1000,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 240),
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0.6)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/pngwing (2).png"),
                          Text(
                            "Road Bike",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                          Text(
                            "Kiross",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(235, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "\$1,599.99",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Screen3();
                      }));
                    },
                    child: Container(
                      height: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(53, 63, 84, 0.6),
                            Color.fromRGBO(34, 40, 52, 0.6)
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/pngwing (3).png"),
                            Text(
                              "Road Bike",
                              style: GoogleFonts.allertaStencil(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            ),
                            Text(
                              "GT Bike",
                              style: GoogleFonts.allertaStencil(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(235, 255, 255, 1),
                              ),
                            ),
                            Text(
                              "\$2,599.99",
                              style: GoogleFonts.allertaStencil(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(195, 195, 195, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0.6)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/pngwing (5).png"),
                          Text(
                            "Road Bike",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                          Text(
                            "Scott",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(235, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "\$2,399.99",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0.6)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/pngwing (4).png",
                          ),
                          Text(
                            "Road Bike",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                          Text(
                            "Ross",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(235, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "\$1,999.99",
                            style: GoogleFonts.allertaStencil(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(195, 195, 195, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 818,
            child: Container(
              height: 116,
              width: 449,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(36, 44, 59, 1),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -8),
                    blurRadius: 20,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 81,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(55, 182, 233, 1),
                          Color.fromRGBO(75, 76, 237, 1),
                        ],
                      ),
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      size: 40,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 40,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 40,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  Icon(
                    Icons.person_2_outlined,
                    size: 40,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
