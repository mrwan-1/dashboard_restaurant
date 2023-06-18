import 'package:flutter/material.dart';

class OrderNow extends StatefulWidget {
  final String id;
  final String title;
  const OrderNow({super.key, required this.id, required this.title});

  @override
  State<OrderNow> createState() => _OrderNowState();
}

class _OrderNowState extends State<OrderNow> {
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