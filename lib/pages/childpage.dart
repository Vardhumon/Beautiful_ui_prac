import 'package:flutter/material.dart';
import 'package:ui_project/components/homecard.dart';

class ChildPage extends StatelessWidget {
  final HomeCard homecard;
  const ChildPage({super.key, required this.homecard});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Color.fromRGBO(234, 231, 230, 1),
      child: Column(
          children: [
            //1st child
            Flexible(
              flex: 3,
              child: Stack(
                children:[ 
                  
                  Container(
                width: double.infinity,
                // height: (MediaQuery.of(context).size.height ~/2).toDouble(),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(homecard.imageAddress),fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))
                ),
                          ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 4.0),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(onTap: () => Navigator.pushNamed(context, '/homepage'),
                  child: Icon(Icons.arrow_circle_left_rounded, color: Colors.white, size: 40,),
                  ),
                  ),
                )
                          ]
              )),
      
            //2nd child
            Flexible(
              flex: 1,
              child: Container(
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15,),
                  color: Colors.white,
                ),
              width: double.infinity,
              // height: (MediaQuery.of(context).size.height ~/2).toDouble(),
              // decoration: BoxDecoration(
              //   image: DecorationImage(image: NetworkImage(homecard.imageAddress),fit: BoxFit.cover)
              // ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(homecard.title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black,decoration: TextDecoration.none),),
                        const Icon(Icons.edit)
                      ],
                    ),
                    Text("to ${homecard.towhat}",style:const  TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black, decoration: TextDecoration.none),),

                    
                    const Expanded(child: Text("The Xbox 360 controller offers precise control and comfort for immersive gaming. With its familiar layout and ergonomic design, it enhances gameplay on the Xbox 360 console.",
                            style: TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none, fontWeight: FontWeight.w300),
                            ),
                            
                            ),
                  ],
                ),
              ),
            )),
      
            //3rd child
            Flexible(
              flex: 1,
              child: Container(
              // color: Colors.red,
              
              // height: (MediaQuery.of(context).size.height ~/2).toDouble(),
              // decoration: BoxDecoration(
              //   image: DecorationImage(image: NetworkImage(homecard.imageAddress),fit: BoxFit.cover)
              // ),
              child: Container( 
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 50),
                width: 200,
                
                decoration: BoxDecoration(
                  color: Color.fromRGBO(
                    23, 24, 28,1
                  ),
                  borderRadius: BorderRadius.circular(10) 
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Exchange",style:const  TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white, decoration: TextDecoration.none, ),),
                    Padding(padding: EdgeInsets.all(8), child: Icon(Icons.swap_horiz, color: Colors.white,),)
                  ],
                ),
              ),
            )),
          ],
        ),
    );
  }
}