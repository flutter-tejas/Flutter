import 'dart:ui';

import 'package:expensemanager/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expensemanager/all_category.dart';
import 'package:expensemanager/mygraph_screen.dart';
import 'package:expensemanager/mytrash_screen.dart';

class MyDrawer extends StatefulWidget {
  int ActiveIndex;
  MyDrawer(this.ActiveIndex, {super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    selectedIndex = widget.ActiveIndex;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 60, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            Text(
              "Saves all your Transactions",
              style: GoogleFonts.poppins(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 0.5),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Transaction();
                      }));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: (selectedIndex == 0)
                            ? const Color.fromRGBO(
                                14,
                                161,
                                125,
                                0.15,
                              )
                            : null,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/Subtract.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Transaction",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const MyGraph();
                      }));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: (selectedIndex == 1)
                            ? const Color.fromRGBO(
                                14,
                                161,
                                125,
                                0.15,
                              )
                            : null,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/ icon _pie chart_.png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Graphs",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const AllCategory();
                      }));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: (selectedIndex == 2)
                            ? const Color.fromRGBO(
                                14,
                                161,
                                125,
                                0.15,
                              )
                            : null,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/Subtract (1).png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const MyTrash();
                      }));
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: (selectedIndex == 3)
                            ? const Color.fromRGBO(
                                14,
                                161,
                                125,
                                0.15,
                              )
                            : null,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/Vector (1).png"),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Trash",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(14, 161, 125, 1),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/Vector (2).png"),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "About us",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(14, 161, 125, 1),
                        ),
                      )
                    ],
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
