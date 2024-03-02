import 'package:flutter/material.dart';

class ListViewTile extends StatelessWidget {
  final String Name;
  const ListViewTile({super.key, required this.Name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      width: 120,
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 55, 1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(Name, style: TextStyle(color: Colors.white, fontSize: 16),),
      )
    );
  }
}