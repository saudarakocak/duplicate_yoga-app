// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramsMaster extends StatelessWidget {
  final String title;
  final String title2;
  final String title3;
  final String gambar;
  const ProgramsMaster({super.key, required this.title, required this.title2, required this.title3, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: GoogleFonts.ptSans(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 5,
                ),
                Text(title2,
                    style: GoogleFonts.ptSans(
                        fontSize: 11,
                        color: Color.fromARGB(137, 0, 0, 0),
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 5,
                ),
                Text(title3,
                    style: GoogleFonts.ptSans(
                        fontSize: 11,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(gambar), fit: BoxFit.cover,
                  ),
                  color: Color.fromARGB(255, 119, 119, 119)),
              child: SizedBox(
                width: 150,
                height: 75,
              ),
            )
          ],
        ),
      ),
    );
  }
}
