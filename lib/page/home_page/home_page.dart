import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String id;
  final String title;
  const HomePage({super.key, required this.id, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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