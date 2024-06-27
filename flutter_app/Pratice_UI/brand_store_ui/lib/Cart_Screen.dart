import 'package:brand_store_ui/Checkout_Screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _Cart_ScreenState();
}

class _Cart_ScreenState extends State<Cart_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                    color: Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Cart",
                  style: GoogleFonts.imprima(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "My Orders ",
              style: GoogleFonts.imprima(
                fontWeight: FontWeight.w400,
                fontSize: 40,
                color: const Color.fromRGBO(13, 13, 14, 1),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      motion: const DrawerMotion(),
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                height: 55,
                                width: 92,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                  color: Color.fromRGBO(255, 122, 0, 1),
                                ),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 16,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    Icon(
                                      Icons.delete_outline_rounded,
                                      size: 16,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 155,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Image.asset("assets/Rectangle 980 (1).png"),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Premium",
                                  style: GoogleFonts.imprima(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: const Color.fromRGBO(13, 13, 14, 1),
                                  ),
                                ),
                                Text(
                                  "Togerine Shirt",
                                  style: GoogleFonts.imprima(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    color: const Color.fromRGBO(13, 13, 14, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Yellow",
                                  style: GoogleFonts.imprima(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color:
                                        const Color.fromRGBO(121, 119, 128, 1),
                                  ),
                                ),
                                Text(
                                  "Size 8",
                                  style: GoogleFonts.imprima(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color:
                                        const Color.fromRGBO(121, 119, 128, 1),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$ 257.85",
                                      style: GoogleFonts.imprima(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 140,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "1",
                                            style: GoogleFonts.imprima(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 34,
                                              color: const Color.fromRGBO(
                                                  13, 13, 14, 1),
                                            ),
                                          ),
                                          TextSpan(
                                            text: "x",
                                            style: GoogleFonts.imprima(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: const Color.fromRGBO(
                                                  13, 13, 14, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 315,
                height: 1,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(227, 227, 227, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Items (3)",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      Text(
                        "\$ 116.00",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Standard Delivery",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      Text(
                        "\$ 12.00",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      Text(
                        "\$ 126.00",
                        style: GoogleFonts.imprima(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Checkout_Screen();
                      }));
                    },
                    child: Container(
                      height: 62,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: const Color.fromRGBO(255, 122, 0, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Checkout Now ",
                          style: GoogleFonts.imprima(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
