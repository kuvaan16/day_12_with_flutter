import 'package:day_12_with_flutter/size_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:ui';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class GlassCard extends StatefulWidget {
  const GlassCard({super.key});

  @override
  State<GlassCard> createState() => _GlassCardState();
}

class _GlassCardState extends State<GlassCard> {
  int active = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 33, 33, 33),
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                width: 900,
                height: double.infinity,
                alignment: Alignment.center,
              ),
              Positioned(
                left: -50,
                top: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(210, 255, 255, 255),
                        Color.fromARGB(162, 255, 255, 255),
                        Colors.black26,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                bottom: 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(210, 255, 255, 255),
                        Color.fromARGB(162, 255, 255, 255),
                        Colors.black26,
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 350,
                  height: 600,
                  child: Stack(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.13),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white.withOpacity(0.15),
                              Colors.white.withOpacity(0.05)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60, left: 45),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 50,
                      child: Container(
                        height: 180,
                        width: 600,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/nike.png",
                              width: 70,
                            ),
                            Text(
                              "AIR STRUCTURE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              child: Text(
                                "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit,sed\ndo eiusmod tempor incididunt\nut labore et dolore ma aliqa.\nUt enim ad minim veniam.",
                                style: TextStyle(
                                    color: Color.fromARGB(146, 255, 255, 255),
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: -40,
                      top: -10,
                      child: Image.asset(
                        "assets/shoe1.png",
                        width: 300,
                      ),
                    ),
                    Positioned(
                      top: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "AIR STRUCTURE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(178, 255, 193, 7),
                                    borderRadius: BorderRadius.circular(3)),
                                child: Text(
                                  "NEW",
                                  style: TextStyle(
                                      letterSpacing: .7,
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "RUNNING COLLECTIONS",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                letterSpacing: .5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RatingBar.builder(
                            initialRating: 4,
                            itemSize: 20,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Color.fromARGB(178, 255, 193, 7),
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "SIZE",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: .5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 35,
                            width: 300,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: sizelist.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (active == index) {
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        active = index;
                                      });
                                    },
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(178, 255, 193, 7),
                                          borderRadius:
                                              BorderRadius.circular(19)),
                                      margin: EdgeInsets.only(right: 15),
                                      child: Text(
                                        sizelist[index].size,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return InkWell(
                                  onTap: () {
                                    setState(
                                      () {
                                        active = index;
                                      },
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 35,
                                    width: 35,
                                    margin: EdgeInsets.only(right: 15),
                                    child: Text(
                                      sizelist[index].size,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "COLORS",
                            style: TextStyle(
                                color: Colors.white, letterSpacing: .5),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 198, 16, 3),
                                    borderRadius: BorderRadius.circular(15)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
