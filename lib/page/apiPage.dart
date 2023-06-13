// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:duplicate_yoga/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class buildernya extends StatelessWidget {
  buildernya({super.key});

  String x = "";

  Future getItems() async {
    var response = await http.get(Uri.https('baconipsum.com','/api/',{'type':'meat-and-filler'}));
    
    var jsonData = jsonDecode(response.body);

    x = jsonData.toString();
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getItems(), 
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return Padding(
              padding: const EdgeInsets.all(30.0),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (() {
                            Navigator.pop(context);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.grey, ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical : 8.0, horizontal: 6),
                              child: Row(
                                children: [
                                  SizedBox(width: 8,),
                                  Icon(Icons.arrow_back_ios, color: Colors.white,),
                                ],
                              ),
                            )),
                        ),
                      ],
                    ),
                    SizedBox(height: 25,),
                    Text("Data dari API : ", style: TextStyle(
                      color: Colors.black, 
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 15,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white, 
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2, 
                            blurRadius: 2,
                            offset: Offset(0, 2)
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(x, style: TextStyle(
                          color: Colors.grey, 
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                        ),textAlign: TextAlign.justify,),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),),
    );
  }
}
