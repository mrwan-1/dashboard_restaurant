// ignore_for_file: must_be_immutable

import 'package:dashoard/confige.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatefulWidget {
   ContainerCard({super.key,required this.icon,required this.title,required this.id,required this.ontap});
  String id;
  IconData icon;
  String title;
  VoidCallback ontap;
  @override
  State<ContainerCard> createState() => _ContainerCardState();
}

class _ContainerCardState extends State<ContainerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Container(
    
        margin: EdgeInsets.all(10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: BasicColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Icon(widget.icon,size: 50,),
                  SizedBox(height: 20,),
                  Text(widget.title,style: TextStyle(fontSize: 21,),)
                ],
              ),
            ),
    );
  }
}