import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:next_tech_vision/Components/header.dart';
import 'package:next_tech_vision/Components/profile_picture_components.dart';
import 'package:next_tech_vision/Components/profile_tiles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 600.0,
                        width: MediaQuery.of(context).size.width * 0.45,
                        color: Colors.white,
                        child: Stack(
                          children: [
                            Transform(
                              transform: Matrix4.rotationZ(pi / 6)
                                ..translate(-180.0, 170.0),
                              child: Container(
                                height: 350.0,
                                width: 700.0,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(300.0)),
                              ),
                            ),
                            Positioned(
                                top: 200.0,
                                left: 100.0,
                                child: Container(
                                  height: 400.0,
                                  width: 400.0,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Manage all your",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 38.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "projects in one place",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        width: 300.0,
                                        child: Text(
                                          "Describe you project and find top talent team near you.",
                                          style: GoogleFonts.nunito(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 230.0,
                                            height: 45.0,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Enter you email",
                                                  hintStyle: GoogleFonts.nunito(
                                                      fontSize: 12.0),
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0))),
                                            ),
                                          ),
                                          SizedBox(width: 20.0),
                                          TextButton(
                                              style: TextButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.black87,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.0))),
                                              onPressed: () {},
                                              child: Container(
                                                height: 45.0,
                                                width: 100.0,
                                                child: Center(
                                                  child: Text(
                                                    "Let's GO!",
                                                    style: GoogleFonts.nunito(
                                                        color: Colors.white,
                                                        fontSize: 13.0),
                                                  ),
                                                ),
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        height: 600.0,
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ProfileImage(
                              top: 140.0,
                              imageUrl:
                                  'https://media.istockphoto.com/id/1088909778/photo/portrait-of-handsome-smiling-young-man-studio-shot.webp?b=1&s=170667a&w=0&k=20&c=ztcrelqZ8UJYEycI9nS_tnMaSQr4ZBr6b-dMnfa-bIE=',
                              left: 90.0,
                              diameter: 200.0,
                            ),
                            ProfileImage(
                              top: 160.0,
                              imageUrl:
                                  'https://media.istockphoto.com/id/876629044/photo/smiling-woman-posing-in-glasses.jpg?s=612x612&w=0&k=20&c=iddV_Pv5wNp8JbFXA6H6dDOgFnGxVzMrtfwrQCcHJNY=',
                              left: 310.0,
                              diameter: 100.0,
                            ),
                            ProfileImage(
                              top: 275.0,
                              imageUrl:
                                  'https://media.istockphoto.com/id/1212960962/photo/young-handsome-man-with-beard-wearing-casual-sweater-and-glasses-over-blue-background.jpg?s=612x612&w=0&k=20&c=OROMM-bo6YlzmnsAfQZDyFfYAskJUHcDKE0XDNfKUwM=',
                              left: 280.0,
                              diameter: 280.0,
                            ),
                            ProfileImage(
                              top: 360.0,
                              imageUrl:
                                  'https://media.istockphoto.com/id/1175244850/photo/young-beautiful-woman-wearing-green-shirt-and-glasses-over-yelllow-isolated-background.webp?b=1&s=170667a&w=0&k=20&c=eEYVcFQb9aZub7f_kUoOSM5uK6KGxcstaOJe2VEQGbE=',
                              left: 90.0,
                              diameter: 170.0,
                            ),
                            ProfileTiles(top: 360, left: 40, title: "Designing user-centric experiences with an eye for detail and innovation", subTitle: "Rohini Raut", factor: 0.5),
                            ProfileTiles(top: 120, left: -50, title: "Crafting seamless backend solutions with visionary leadership", subTitle: "Mustkeem Baraskar", factor: 0.9),
                            ProfileTiles(top: 160, left: 380, title: "Streamlining DevOps processes for efficient and reliable delivery", subTitle: "Sakshi Rajurkar", factor: 0.4),
                            ProfileTiles(top: 270, left: 440, title: "Ensuring robust and scalable cloud deployments for a resilient future", subTitle: "Devesh Sawarkar", factor: 1.1),
                          ],
                        ),
                      )
                    ],
                  ),
                  Header(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
