import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/Sign_In_Page.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // Image section
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            'assets/252a6624a42c117099537c7a1320256d 1.png',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 33, right: 33),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.aclonica(
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(27, 30, 40, 1),
              ),
              children: <TextSpan>[
                TextSpan(text: 'People don’t take trips, trips take '),
                TextSpan(
                  text: 'people',
                  style: GoogleFonts.aclonica(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 112, 41, 1),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 46),
          child: Text(
            'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(125, 132, 141, 1),
            ),
          ),
        ),
        Spacer(),
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
                      return const SignInPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(13, 110, 253, 1),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'Next',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
