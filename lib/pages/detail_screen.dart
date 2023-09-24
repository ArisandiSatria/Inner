import 'package:flutter/material.dart';
import 'package:submission/model/houses.dart';
import 'package:submission/theme.dart';

class DetailScreen extends StatelessWidget {
  final Houses place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
        SafeArea(
          bottom: false,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Stack(
                    children: [
                    Column(children: [
                      Image.asset(
                        place.imageAsset,
                        width: MediaQuery.of(context).size.width,
                        height: 350,
                        fit: BoxFit.cover,
                      ),
                      ]
                    ),
                    navButton(context),
                    contentContainer()
                    ]
                  ),
                ),bookButton()
              ],
            ),
        )
    );
  }

  Padding navButton(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.only(top:30, left: 24, right: 24),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: 25,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                      const FavoriteButton(),
                      ],
                    ),
                  );
  }

  Positioned bookButton() {
    return Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 30,
              child: Container(
                height: 50,
                width: 327,
                margin: EdgeInsets.only(left: 30, right: 30,),
                decoration: BoxDecoration(color: containerBackgroundColor, borderRadius: BorderRadius.circular(17)),
                child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                            backgroundColor: primaryColor),
                        child: Text(
                          'Pesan Sekarang',
                          style: TextStyle(fontSize: 18),
                        )),
              ));
  }

  Container contentContainer() {
    return Container(
      margin: EdgeInsets.only(top: 300),
      width: double.infinity,
      // padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.vertical(top: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(place.name, style: blackTextStyle.copyWith(fontSize: 22),),
                          RichText(
                              text: TextSpan(
                              children: [
                                TextSpan(text: '\$${place.price}', style: TextStyle(color: primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
                                TextSpan(text: ' / bulan', style: greyTextStyle.copyWith(fontSize: 16)),
                              ]),
                            ),
                          ]),)
                    ],
                  )
                ],),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Fasilitas Utama', style: blackTextStyle,),
                      SizedBox(height: 12,),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [
                        Column(
                          children: [
                            Icon(Icons.kitchen, size: 32, color: primaryColor,),
                            RichText(
                            text: TextSpan(
                            children: [
                              TextSpan(text: '${place.facilities['kitchen']}', style: TextStyle(color: primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' dapur', style: greyTextStyle.copyWith(fontSize: 16)),
                            ]),
                          ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.bed, size: 32, color: primaryColor,),
                            RichText(
                            text: TextSpan(
                            children: [
                              TextSpan(text: '${place.facilities['bedroom']}', style: TextStyle(color: primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' kasur', style: greyTextStyle.copyWith(fontSize: 16)),
                            ]),
                          ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.shelves, size: 32, color: primaryColor,),
                            RichText(
                            text: TextSpan(
                            children: [
                              TextSpan(text: '${place.facilities['cupboard']}', style: TextStyle(color: primaryColor, fontSize: 16, fontWeight: FontWeight.bold)),
                              TextSpan(text: ' lemari', style: greyTextStyle.copyWith(fontSize: 16)),
                            ]),
                          ),
                          ],
                        ), 
                      ],),
                      SizedBox(height: 30,),
                      Text('Foto Penginapan', style: blackTextStyle,),
                    ]),),
                    Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    SizedBox(height: 12,),
                    Container(
                      height: 88,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [Container(
                              margin: EdgeInsets.only(left: 24, right: 24),
                              child: InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Container(
                                        height: 88,
                                        width: 110,
                                        child: 
                                          Image.asset('assets/images/classic-hut.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 9,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Container(
                                        height: 88,
                                        width: 110,
                                        child: 
                                          Image.asset('assets/images/office-like.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 9,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Container(
                                        height: 88,
                                        width: 110,
                                        child: 
                                          Image.asset('assets/images/orange-section.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 9,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Container(
                                        height: 88,
                                        width: 110,
                                        child: 
                                          Image.asset('assets/images/sahara-home.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                    SizedBox(width: 9,),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(18),
                                      child: Container(
                                        height: 88,
                                        width: 110,
                                        child: 
                                          Image.asset('assets/images/transparent-house.png', fit: BoxFit.cover),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )]
                          ),
                    ),
                    ],),),
                    Padding(padding: EdgeInsets.only(top: 30, left: 30, right: 30), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Lokasi',
                      style: blackTextStyle,), 
                        SizedBox(height: 6,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(place.location, style: greyTextStyle,),
                                Text(place.province, style: greyTextStyle)
                              ],
                            ),
                            Icon(Icons.place, color: primaryColor, size: 32,)
                          ],
                        ),
                        SizedBox(height: 100)
                    ],),),
            ],
          ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
 
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
 
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
 
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
            backgroundColor: primaryColor,
            radius: 25,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite: Icons.favorite_border,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          );
  }
}