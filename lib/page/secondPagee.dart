// ignore: unused_import
// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:duplicate_yoga/component/PopularCourses.dart';
import 'package:duplicate_yoga/component/ProgramsMaster.dart';
import 'package:duplicate_yoga/component/miniComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class secondpagee extends StatefulWidget {
  const secondpagee({super.key});

  @override
  State<secondpagee> createState() => _secondpageeState();
}

class _secondpageeState extends State<secondpagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 160.0, horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("images/meditation.jpg"), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.black12),
                            child: SizedBox(
                              height: 225,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Complete beginners should start here. This bundle will teach basic yoga posecs fo till with energy and joy. Home on your mat and start to build....",
                            style: GoogleFonts.ptSans(
                                fontSize: 15,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 2.45,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/meditation2.jpg"), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black12),
                                  child: SizedBox(
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width / 2.45,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Complete beginners should start here. This to bundle will teach basic yoga end.",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.3,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/meditation2.jpg"), fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black12),
                                  child: SizedBox(
                                    height: 150,
                                    width:
                                        MediaQuery.of(context).size.width / 2.3,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Complete beginners should start here. This to bundle will teach basic yoga end.",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500),
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 110, 39, 176),
                          borderRadius:
                              BorderRadius.only(bottomRight: Radius.circular(60))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Tips & Topics Details",
                                style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      )),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/1.35,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black12,
                      ),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Add a comment.......",
                                hintStyle: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 110, 39, 176),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
