// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            
            color: Colors.red,
            borderRadius: BorderRadius.circular(50)
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:9.0, vertical: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome,", style: TextStyle(color: Colors.white54, fontSize: 12),),
              Text("Marsha", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),)
            ],
          ),
        )
               ],
      ),
    );
  }
}