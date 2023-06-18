import 'package:flutter/material.dart';


class Orders extends StatefulWidget {
  const Orders({super.key, required this.id, required this.title});
   final String id;
  final String title;

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
          elevation: 0,
          backgroundColor: Colors.white10,
          centerTitle: true,
          title: Text(widget.title,style: TextStyle(color: Colors.black),),
        ),
        body: Container(),
      );
  }
}