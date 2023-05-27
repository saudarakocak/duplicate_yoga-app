// ignore: unused_import
import 'package:duplicate_yoga/page/secondPagee.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCourses extends StatelessWidget {
  final String title;
  final String type;
  final String time;
  final String gambar;
  const PopularCourses({super.key, required this.title, required this.type, required this.time, required this.gambar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>secondpagee()));
      },
      child: Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Column(
                          children: [
                            //gambar
                            Container(
                              height: 125,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 240, 240),
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(gambar,), fit: BoxFit.cover,
                                )
                              ),
                            ),
                            //text
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical : 8.0, horizontal: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(title,
                                          style: GoogleFonts.ptSans(
                                              fontSize: 14,
                                              color: Color.fromARGB(137, 0, 0, 0),
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                  SizedBox(height: 8,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(type,
                                          style: GoogleFonts.ptSans(
                                              fontSize: 10,
                                              color: Colors.purple,
                                              fontWeight: FontWeight.w500)),
                                      Text(time,
                                          style: GoogleFonts.ptSans(
                                              fontSize: 10,
                                              color: Color.fromARGB(137, 0, 0, 0),
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
    );
  }
}