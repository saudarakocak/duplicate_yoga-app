// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mostPopular extends StatelessWidget {
  final String title1;
  final String title2;
  //final AssetImage image;
  const mostPopular({super.key, required this.title1, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //image: DecorationImage(image: AssetImage(""), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(69, 88, 8, 102)),
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 110, 39, 176),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 8),
                      child: Text("New",
                          style: GoogleFonts.ptSans(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Arlene McCoy",
                          style: GoogleFonts.ptSans(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Yoga App",
                          style: GoogleFonts.ptSans(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
            height: 140,
            width: MediaQuery.of(context).size.width / 2.8,
          )),
    );
  }
}
