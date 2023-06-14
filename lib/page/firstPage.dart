// ignore: unused_import
// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:duplicate_yoga/component/PopularCourses.dart';
import 'package:duplicate_yoga/component/ProgramsMaster.dart';
import 'package:duplicate_yoga/component/miniComponent.dart';
import 'package:duplicate_yoga/page/apiPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 231, 231),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 110, 39, 176),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Popular Search",
                          style: GoogleFonts.ptSans(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600))
                    ],
                  ),
                )),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 125.0),
                  child: Column(
                    children: [
                      //search bar
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Search",
                                  style: GoogleFonts.ptSans(
                                      fontSize: 15,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w500)),
                              Icon(
                                Icons.search,
                                color: Colors.purple,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      //mini content
                      Row(
                        children: [
                          miniContent(title: "Prenatal", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "ForWomen", chosen: true),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Training", chosen: false),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          miniContent(title: "Courses", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Videos", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Morning", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Yoga", chosen: false),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          miniContent(title: "Restorative", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Recent Post", chosen: false),
                          SizedBox(
                            width: 12,
                          ),
                          miniContent(title: "Most Popular", chosen: false),
                        ],
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      //Popular Courses
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("Popular Courses",
                                style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      PopularCourses(
                        title:
                            "15 Minute yoga practice the\nbeginner in 30 days",
                        type: "Trainning",
                        time: "Feb 15, 2020",
                        gambar: "images/elastic.jpg",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      PopularCourses(
                        title:
                            "15 Minute yoga practice the\nbeginner in 30 days",
                        type: "Trainning",
                        time: "Feb 15, 2020",
                        gambar: "images/elastic2.jpg",
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      PopularCourses(
                        title:
                            "15 Minute yoga practice the\nbeginner in 30 days",
                        type: "Trainning",
                        time: "Feb 15, 2020",
                        gambar: "images/elastic.jpg",
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //dot dot
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.purple[100]),
                      child: SizedBox(
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.purple),
                      child: SizedBox(
                        height: 10,
                        width: 10,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.purple[100]),
                      child: SizedBox(
                        height: 10,
                        width: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("Programs Master",
                                style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),

                      //content
                      ProgramsMaster(
                        title: "30 day yoga challenge",
                        title2: "Ralph Edwards",
                        title3: "Level 5",
                        gambar: "images/elastic2.jpg",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ProgramsMaster(
                        title: "30 day yoga challenge",
                        title2: "Ralph Edwards",
                        title3: "Level 5",
                        gambar: "images/elastic2.jpg",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ProgramsMaster(
                        title: "30 day yoga challenge",
                        title2: "Ralph Edwards",
                        title3: "Level 5",
                        gambar: "images/elastic2.jpg",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => buildernya()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 1,
                                blurRadius: 1
                              )
                            ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white, ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Lihat Semua User",
                                style: GoogleFonts.ptSans(
                                    fontSize: 18,
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
