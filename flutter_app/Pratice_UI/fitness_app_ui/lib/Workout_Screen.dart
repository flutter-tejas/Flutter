import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 33, 38, 1),
      body: Stack(
        children: [
          Positioned(
            top: 104,
            left: 40,
            child: Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/young-athletic-woman-white-headphones-training-listening-music-street-outdoors-working-lower-body-out-mat-concept-healthy-lifestyle-open-air-sport-activity-weight-loss 1.png",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 40,
            child: Container(
              height: 134,
              width: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(23),
                  bottomRight: Radius.circular(23),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(104, 104, 104, 0),
                    Color.fromRGBO(29, 29, 29, 1),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 322,
            left: 86,
            child: Container(
              height: 64,
              width: 258,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromRGBO(25, 33, 38, 0.1),
                border: Border.all(
                  width: 0.5,
                  color: const Color.fromRGBO(187, 242, 70, 1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(187, 242, 70, 1),
                      ),
                      child: const Icon(
                        Icons.timer_outlined,
                        color: Color.fromRGBO(25, 29, 26, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Time",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Text(
                          "20 min",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(187, 242, 70, 1),
                          ),
                        )
                      ],
                    ),
                    const VerticalDivider(
                      color: Color.fromRGBO(255, 255, 255, 0.25),
                      thickness: 1,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromRGBO(187, 242, 70, 1),
                      ),
                      child: const Icon(
                        Icons.water_drop_outlined,
                        color: Color.fromRGBO(25, 29, 26, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Burn",
                          style: GoogleFonts.poppins(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        Text(
                          "95 kcal",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(187, 242, 70, 1),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 410,
            left: 40,
            child: Text(
              "Lower Body Training",
              style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),
          ),
          Positioned(
            top: 456,
            left: 40,
            child: Container(
              width: 350,
              height: 88,
              child: Text(
                "The lower abdomen and hips are the most difficult areas of the body to reduce when we are on a diet. Even so, in this area, especially the legs as a whole, you can reduce weight even if you don't use tools.",
                style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 0.5)),
              ),
            ),
          ),
          Positioned(
            top: 584,
            left: 40,
            child: Row(
              children: [
                Text(
                  "Round",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                const SizedBox(
                  width: 240,
                ),
                Text(
                  "1/8",
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 620,
            bottom: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: [
                  Container(
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(56, 64, 70, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/Image (3).png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jumping Jack",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Text(
                                "00:30",
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 33, 38, 1),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(187, 242, 70, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(56, 64, 70, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/image 70.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Squats",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Text(
                                "01:00",
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 33, 38, 1),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(187, 242, 70, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(56, 64, 70, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/Image (2).png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Backward Lunge",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Text(
                                "00:30",
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 33, 38, 1),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(187, 242, 70, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(56, 64, 70, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset("assets/image 67.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " Lunge",
                                style: GoogleFonts.lato(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              Text(
                                "00:30",
                                style: GoogleFonts.lato(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.5),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(25, 33, 38, 1),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Color.fromRGBO(187, 242, 70, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 800,
            left: 40,
            child: SizedBox(
              height: 56,
              width: 350,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Color.fromRGBO(187, 242, 70, 1),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Lets Workout",
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color.fromRGBO(25, 33, 38, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
