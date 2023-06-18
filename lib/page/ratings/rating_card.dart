import 'package:dashoard/page/ratings/edit.dart';
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

import '../../confige.dart';

class RatingCard extends StatelessWidget {
  const RatingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal:0),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Colors.white38),
        height: MediaQuery.of(context).size.height / 8,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width / 4.4,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/images1.png'),
                ),
              ),
              child: Container(
                width: 30,
                height: 30,
                  decoration: BoxDecoration(
                    color:BasicColor,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(10) ,bottomLeft:Radius.circular(10) )
                  ),
                  child: Icon(Icons.delete,color: Colors.white,)),
            ),
            SizedBox(width: 4,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                    'ريال1000',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  'سلطه ارض الأخضراء نفر',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Edit(),));
              }, icon: Icon(Icons.edit,size: 30,)),
            )
          ],
        ),
      ),
    );
  }
}