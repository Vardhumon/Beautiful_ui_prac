import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String imageAddress;
  final String towhat;
  final int howmuch;
  final int location;

  const HomeCard({super.key, required this.title, required this.imageAddress, required this.towhat, required this.location, required this.howmuch});

  @override
  Widget build(BuildContext context) {
    double cardwidth = 180;
    double paddingcard = 10;
    return Container(
      margin: EdgeInsets.all(10),
      width: cardwidth,
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: 15, spreadRadius: 2,color: Colors.grey)
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(20)

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          // image
            ClipRRect(
              borderRadius: BorderRadius.circular(19),
              child: Image(image: NetworkImage(imageAddress),fit: BoxFit.cover,width: cardwidth,height: 190,),
            )

          // title + number
          ,Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal:paddingcard), child: Text(title, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),),),
              // Padding(padding: EdgeInsets.only(right:20), child: CircleAvatar(
              //   minRadius: 10,
              //   backgroundColor: Colors.black45,
              //   child: Text("X$howmuch",style: TextStyle(fontSize: 10),),
              // ),)
            ],
          ),
          // to what?
          Padding(padding: EdgeInsets.symmetric(horizontal: paddingcard),child: Text("to $towhat", style: TextStyle(color: Colors.black, fontSize: 16),),),

          // location
          Padding(padding: EdgeInsets.symmetric(horizontal: paddingcard, vertical: 4),
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.grey,size: 10,),
              Text("$location miles from you", style: TextStyle(color: Colors.grey),)
            ],
          ),
          )
        ],  
      ),
    );
  }
}