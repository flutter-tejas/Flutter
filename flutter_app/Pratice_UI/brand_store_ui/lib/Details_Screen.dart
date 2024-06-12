import 'package:brand_store_ui/Cart_Screen.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Details_Screen extends StatefulWidget {
  const Details_Screen({super.key});

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                  color: Color.fromRGBO(13, 13, 14, 1),
                ),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const Icon(
                  Icons.bookmark_border_outlined,
                  size: 30,
                  color: Color.fromRGBO(13, 13, 14, 1),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/Rectangle 984.png",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Premium",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                    Text(
                      "Targerine Shirt",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: const Color.fromRGBO(13, 13, 14, 1),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/Ellipse 14.png"),
                    Image.asset("assets/Ellipse 15.png"),
                    Image.asset("assets/Ellipse 16.png"),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Size",
                style: GoogleFonts.imprima(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: const Color.fromRGBO(13, 13, 14, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "S",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "M",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                  child: Center(
                    child: Text(
                      "L",
                      style: GoogleFonts.imprima(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
                Text(
                  "XL",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "XXL",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Icon(
                  Icons.attach_money_sharp,
                  size: 36,
                ),
                Text(
                  "257.85",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                    letterSpacing: 1,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const Cart_Screen();
                    }));
                  },
                  child: Container(
                    height: 62,
                    width: 162,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: const Color.fromRGBO(255, 122, 0, 1),
                    ),
                    child: Center(
                      child: Text(
                        "Add To Cart",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
