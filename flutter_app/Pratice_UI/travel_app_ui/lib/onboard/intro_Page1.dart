import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/onboard/intro_Page2.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/afbea499038243 1.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 33, right: 33),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.aclonica(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(27, 30, 40, 1),
              ),
              children: <InlineSpan>[
                const TextSpan(text: 'Life is short and the world is '),
                WidgetSpan(
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Text(
                      'wide',
                      style: GoogleFonts.aclonica(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 112, 41, 1),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 46),
          child: Text(
            'At Friends tours and travel, we customize reliable and trustworthy educational tours to destinations',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(125, 132, 141, 1),
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: Container(
            height: 56,
            width: 335,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const IntroPage2();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Get Started',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
