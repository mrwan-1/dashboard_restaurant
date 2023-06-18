import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  final String id;
  final String title;
  const Notifications({super.key, required this.id, required this.title});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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