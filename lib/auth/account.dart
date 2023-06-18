import 'package:dashoard/auth/text_fild.dart';
import 'package:dashoard/confige.dart';
import 'package:dashoard/home/home.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Textfeld(icon: Icons.account_circle, title: 'البريد الالكتروني',),
          Textfeld(icon: Icons.password_outlined, title: 'كلمه السر',),
          SizedBox(height: 40,),
          Material(
            color: BasicColor,
            borderRadius: BorderRadius.circular(15),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width /1.1,
              onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                  return Home();
                },), (route) => false);
              },child: Text('تسجيل الدخول',style: TextStyle(fontSize: 22,),),),
          ),

          ],
        )
        ),
      ),
    );
  }
}