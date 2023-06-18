import 'package:flutter/material.dart';

import '../confige.dart';

class Textfeld extends StatelessWidget {
  const Textfeld({super.key, required this.icon, required this.title});
final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return   Container(
 padding: EdgeInsets.symmetric(horizontal: 15) ,
      margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: greyColor,
              
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: title,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                icon: Icon(icon,size: 35,),
                border: InputBorder.none
              ),
            ),
          );
  }
}