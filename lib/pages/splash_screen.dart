import 'package:flutter/material.dart';
import 'package:Inner/pages/main_screen.dart';
import 'package:Inner/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: (orientation == Orientation.portrait) ? _columnLayout() : _rowLayout(),
      ),
    );
  }
}

class _rowLayout extends StatelessWidget {
  const _rowLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
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
            ],
          ),
        ),
        Spacer(),
        Image.asset('assets/images/splash_img.png')
      ],
    );
  }
}

class _columnLayout extends StatelessWidget {
  const _columnLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
            ],
          ),
        ),
        Spacer(),
        Image.asset('assets/images/splash_img.png')
      ],
    );
  }
}
