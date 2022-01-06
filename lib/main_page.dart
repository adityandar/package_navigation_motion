import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_navigation/data_page.dart';
import 'package:package_navigation/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/cart_icon.svg",
              width: 48,
            ),
            Center(
              child: Text(
                'Belajar Package2 & Navigation',
                style: GoogleFonts.poppins(
                  fontSize: 32,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                print("MobProg1");

                print("MobProg2");

                print("MobProg3");
                var result = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
                print(result);
                print("MobProg");
              },
              child: Text('Go to second page'),
            ),
            SizedBox(height: 36),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Go to third page'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/third', (route) => false);
              },
              child: Text('Go to third page and can\'t back'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DataPage(
                      title: "TelU",
                    ),
                  ),
                );
              },
              child: Text('Go to data page with data = TelU'),
            ),
          ],
        ),
      ),
    );
  }
}
