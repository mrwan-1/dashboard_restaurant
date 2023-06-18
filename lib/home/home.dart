

import 'package:dashoard/drawer/drawer.dart';
import 'package:dashoard/home/container_card.dart';
import 'package:dashoard/page/home_page/home_page.dart';
import 'package:dashoard/page/notifgtion/notifications.dart';
import 'package:dashoard/page/order_now/order_now.dart';
import 'package:dashoard/page/ratings/ratings.dart';
import 'package:flutter/material.dart';

import '../page/food/food.dart';
import '../page/orders/orders.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic listRat = [
    {
      "id": "1",
      "title": "الرئيسيه",
      "IconData": Icons.home,
      "page":const HomePage(id: "1", title: "الرئيسيه",),
    },
    {
      "id": "2",
      "title": "التصنيفات",
      "IconData": Icons.category_outlined,
      "page": Ratings(id: "2", title: "التصنيفات",),
    },
    {
      "id": "3",
      "title": "الماكولات",
      "IconData": Icons.fastfood,
      "page":Food(id: "3", title: "الماكولات",),
    },
    {
      "id": "4",
      "title": "الطلبيات",
      "IconData": Icons.message,
      "page":Orders(id: "4", title: "الطلبيات",),
    },
    {
      "id": "5",
      "title": "الاشعارات",
      "IconData": Icons.notifications,
      "page": Notifications(id: '5', title: 'الاشعارات',)
    },
    {
      "id": "6",
      "title": "الطلبيات قيد التنفيذ",
      "IconData": Icons.access_alarm,
      "page":OrderNow(id: "6", title: "الطلبيات قيد التنفيذ",),
    },
  ];
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                _globalKey.currentState?.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              )),
          backgroundColor: Colors.white10,
          elevation: 0,
        ),
        endDrawer: const MyDrawer(),
        key: _globalKey,
        body: GridView.builder(
          itemCount: listRat.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 4,
            crossAxisSpacing: 8,
            childAspectRatio: 8 / 8,
          ),
          itemBuilder: (BuildContext context, int i) {
            return ContainerCard(
              icon: listRat[i]['IconData'],
              title: listRat[i]['title']!,
              id: listRat[i]['id']!,
               ontap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                   return listRat[i]['page'];
                  },));
               },
            );
          },
        ),
      ),
    );
  }
}
