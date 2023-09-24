import 'package:flutter/material.dart';
import 'package:submission/pages/main_screen.dart';
import 'package:submission/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Penginapan yang Nyaman \nMembawa Kebahagiaan',
                      style: blackTextStyle.copyWith(fontSize: 18)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Temukan penginapan dengan cepat, tepat, dan pastinya aman',
                    style: greyTextStyle.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 210,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                            backgroundColor: primaryColor),
                        child: Text(
                          'Jelajahi',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                  // SizedBox(
                  //   height: 23,
                  // ),
                ],
              ),
            ),
            Spacer(),
            Image.asset('assets/images/splash_img.png')
          ],
        ),
      ),
    );
  }
}
