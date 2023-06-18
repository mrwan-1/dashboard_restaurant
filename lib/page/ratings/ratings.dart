import 'package:dashoard/confige.dart';
import 'package:dashoard/page/ratings/add.dart';
import 'package:dashoard/page/ratings/rating_card.dart';
import 'package:flutter/material.dart';


class Ratings extends StatefulWidget {
  const Ratings({super.key, required this.id, required this.title});
   final String id;
  final String title;

  @override
  State<Ratings> createState() => _RatingsState();
}

class _RatingsState extends State<Ratings> {
  @override
  Widget build(BuildContext context) {
    double heightW = MediaQuery.of(context).size.height /3;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)),
            elevation: 0,
            backgroundColor:greyColor,
            centerTitle: true,
            title: Text(widget.title,style: TextStyle(color: Colors.black),),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height:heightW *2.3, 
                color:greyColor,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => RatingCard(),),
              ),
              Container(
                width: double.infinity,
                height:heightW /2.9 , 
                
                 color: greyColor,
                child: Material(
                  color: BasicColor,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Add(),));
                  },child: Text('اضافه تصنيف جديد',style: TextStyle(fontSize: 22),),),
                ),
              )
            ],
    
          ),
        ),
    );
  }
}