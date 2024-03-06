// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_project/components/listviewtile.dart';
import 'package:ui_project/components/homecard.dart';
import 'package:ui_project/components/homeprofile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(234, 231, 230, 1),
        body: Column(
          children: [
            Container(
              height: 260,
              decoration: BoxDecoration(
                color: Color.fromRGBO(23, 24, 28, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // info and noti
                  Padding(
                    padding: EdgeInsets.only(left: 4,top: 30, right: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeProfile(),
                        Icon(Icons.notifications, color: Colors.white,)
                      ],
                    ),
                  ),
                  //search
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Search Here!",
                          labelStyle: TextStyle(
                            wordSpacing: 5,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                            
                          ),
                          prefixIcon: Icon(Icons.search_outlined),
                          prefixIconColor: Colors.white60,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  //list of items
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(9),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(right: 10), child: Icon(Icons.add_circle_rounded, color: Colors.white, size: 50,),),
                              ListViewTile(Name: "Lamp"),
                              ListViewTile(Name: "Bicycle"),
                              ListViewTile(Name: "Computer"),
                              ListViewTile(Name: "Laptop"),
                              ListViewTile(Name: "Sweatshirt"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //cards
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // 1st list
                    Column(
                      children: [
                        HomeCard(
                                    title: "360 Controller",
                                    imageAddress: "https://images.unsplash.com/photo-1605899435973-ca2d1a8861cf?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "Xbox 360",
                                    location: 6,
                                    howmuch: 1,
                                    
                        ),
                        HomeCard(
                                    title: "Sneakers",
                                    imageAddress: "https://images.unsplash.com/flagged/photo-1556637640-2c80d3201be8?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "Table",
                                    location: 4,
                                    howmuch: 3,
                                    

                        ),
                        HomeCard(
                                    title: "Watches",
                                    imageAddress: "https://images.unsplash.com/photo-1695345272166-4efd76dd7a21?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "Suit",
                                    location: 5,
                                    howmuch: 1,
                                    

                        ),
                        // Add more cards here
                      ],
                    ),
                    Column(
                      children: [
                        HomeCard(
                                    title: "Books",
                                    imageAddress: "https://images.unsplash.com/photo-1544947950-fa07a98d237f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "Tablet",
                                    location: 1,
                                    howmuch: 3,
                                    

                        ),
                        HomeCard(
                                    title: "Clock",
                                    imageAddress: "https://images.unsplash.com/photo-1431499012454-31a9601150c9?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "sneakers",
                                    location: 2,
                                    howmuch: 3,
                                    

                        ),
                        HomeCard(
                                    title: "Nike Shoes",
                                    imageAddress: "https://images.unsplash.com/photo-1491553895911-0055eca6402d?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                    towhat: "Books",
                                    location: 6,
                                    howmuch: 1,
                                    

                        ),
                        // Add more cards here
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
