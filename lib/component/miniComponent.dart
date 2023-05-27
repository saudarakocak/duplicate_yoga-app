// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class miniContent extends StatelessWidget {
  final String title;
  final bool chosen;
  const miniContent({super.key, required this.title, required this.chosen});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: chosen ?Colors.purple[300]:Colors.purple[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 20.0, vertical: 10),
                    child: Text(title,
                        style: GoogleFonts.ptSans(
                            fontSize: 12,
                            color: chosen ?Colors.white:Colors.purple,
                            fontWeight: FontWeight.w500)),
                  ),
                );
  }
}