// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class componentExplained extends StatelessWidget {
  final icon;
  final String title;
  final String title2;
  const componentExplained({super.key, required this.icon, required this.title, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(69, 225, 190, 231)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                icon,
                size: 25,
                color: Color.fromARGB(255, 110, 39, 176),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.ptSans(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 2,
              ),
              Text(title2,
                  style: GoogleFonts.ptSans(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
