import 'package:flutter/material.dart';
import 'package:Inner/model/houses.dart';
import 'package:Inner/model/popular_cities.dart';
import 'package:Inner/pages/detail_screen.dart';
import 'package:Inner/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _titleTextAndSearchField(),
                      _popularCitiesCategory(),
                      SizedBox(
                        height: 30,
                      ),
                      recommendedHouse(),
                    ],
                  )),
            ),
            bottomNavBar()
          ],
        ),
      ),
    );
  }

  Positioned bottomNavBar() {
    return Positioned(
        left: 0.0,
        right: 0.0,
        bottom: 30,
        child: Container(
          height: 65,
          width: 327,
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          decoration: BoxDecoration(
              color: containerBackgroundColor,
              borderRadius: BorderRadius.circular(23)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.home,
                    color: primaryColor,
                  )),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.email,
                    color: iconInActiveColor,
                  )),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.card_travel,
                    color: iconInActiveColor,
                  )),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite,
                    color: iconInActiveColor,
                  )),
            ],
          ),
        ));
  }

  Container _popularCitiesCategory() {
    return Container(
      height: 150,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: popularCitiesList.map((place) {
            return Container(
              margin: EdgeInsets.only(
                left: 24,
              ),
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    height: 150,
                    width: 120,
                    decoration: BoxDecoration(
                      color: containerBackgroundColor,
                    ),
                    child: Column(children: [
                      Image.asset(place.imageAsset, fit: BoxFit.cover),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        place.name,
                        style: blackTextStyle,
                      )
                    ]),
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }

  Padding _titleTextAndSearchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Jelajahi Sekarang',
              style: blackTextStyle.copyWith(fontSize: 20)),
          SizedBox(
            height: 2,
          ),
          Text(
            'Temukan penginapan impian anda',
            style: greyTextStyle.copyWith(fontSize: 12),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(right: 24),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0)
            ]),
            child: TextField(
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  hintText: 'Cari Penginapan...',
                  hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 14),
                  suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.search,
                        size: 32,
                        color: primaryColor,
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Kota Populer',
            style: blackTextStyle,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class recommendedHouse extends StatelessWidget {
  const recommendedHouse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rekomendasi',
            style: blackTextStyle,
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: Wrap(
                spacing: 80,
                children: housesList.map((place) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(place: place);
                        }));
                      },
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(18),
                        child: Container(
                            height: 110,
                            width: 329,
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: Image.asset(place.imageAsset)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        place.name,
                                        style: blackTextStyle.copyWith(
                                            fontSize: 16),
                                      ),
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: '\$${place.price}',
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text: ' / bulan',
                                              style: greyTextStyle.copyWith(
                                                  fontSize: 16)),
                                        ]),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        place.province,
                                        style: greyTextStyle.copyWith(
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                  );
                }).toList()),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
