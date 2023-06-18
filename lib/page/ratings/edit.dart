import 'package:dashoard/auth/text_fild.dart';
import 'package:dashoard/confige.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
        centerTitle: true,
      backgroundColor: Colors.white,
        title: Text(
          'تعديل التصنيف ',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 70,),
          Center(
            child: InkWell(
              child: CircleAvatar(
                backgroundColor: BasicColor,
                radius: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      size: 100,
                      color: Colors.black,
                    ),
                    Text(
                      'تعديل صوره المنتج',
                      style: TextStyle(fontSize: 24,color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
           SizedBox(height: 50,),
          Textfeld(icon: Icons.add_business_outlined, title: 'اسم الصنف'),
          Textfeld(icon: Icons.monetization_on_outlined, title: 'سعر الصنف'),
           SizedBox(height: 20,),
          Material(
                  color: BasicColor,
                  borderRadius: BorderRadius.all( Radius.circular(20)),
                  child: MaterialButton(
                    minWidth: 350,
                    onPressed: (){
                   
                  },child: Text('تعديل',style: TextStyle(fontSize: 22),),),
                ),
        ],
      ),
    );
  }
}
