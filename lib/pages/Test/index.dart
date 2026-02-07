
import 'package:flutter/material.dart';
import 'package:hm_shop/models/tapModel.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
   final List<TabModel> _tabList= [
    TabModel(icon: "lib/assets/ic_public_home_normal.png",active_icon: "lib/assets/ic_public_home_active.png",text: "首页"),
    TabModel(icon: "lib/assets/ic_public_pro_normal.png",active_icon: "lib/assets/ic_public_pro_active.png",text: "分类"),
    TabModel(icon: "lib/assets/ic_public_cart_normal.png",active_icon: "lib/assets/ic_public_cart_active.png",text: "购物车"),
    TabModel(icon: "lib/assets/ic_public_my_normal.png",active_icon: "lib/assets/ic_public_my_active.png",text: "我的"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
       child: ListView.builder(itemCount: 4, itemBuilder: (context,index){
        return Image.asset(_tabList[index].active_icon!,width: 30,height: 30,);
       }
    )
    );
  }
}