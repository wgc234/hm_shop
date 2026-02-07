import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hm_shop/models/tapModel.dart';
import 'package:hm_shop/pages/Cart/index.dart';
import 'package:hm_shop/pages/Category/index.dart';
import 'package:hm_shop/pages/Home/index.dart';
import 'package:hm_shop/pages/Mine/index.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<TabModel> _tabList = [
    TabModel(
      icon: "lib/assets/ic_public_home_normal.png",
      active_icon: "lib/assets/ic_public_home_active.png",
      text: "首页",
    ),
    TabModel(
      icon: "lib/assets/ic_public_pro_normal.png",
      active_icon: "lib/assets/ic_public_pro_active.png",
      text: "分类",
    ),
    TabModel(
      icon: "lib/assets/ic_public_cart_normal.png",
      active_icon: "lib/assets/ic_public_cart_active.png",
      text: "购物车",
    ),
    TabModel(
      icon: "lib/assets/ic_public_my_normal.png",
      active_icon: "lib/assets/ic_public_my_active.png",
      text: "我的",
    ),
  ];
  List<BottomNavigationBarItem> getBarItem() {
    return List.generate(_tabList.length, (int index) {
      return BottomNavigationBarItem(
        icon: Image.asset(_tabList[index].icon!, width: 30, height: 30),
        activeIcon: Image.asset(
          _tabList[index].active_icon!,
          width: 30,
          height: 30,
        ),
        label: _tabList[index].text,
      );
    });
  }

  int _currentIndex = 0;

  List<Widget> _getChild (){
    return [HomeView(),CartView(),CategoryView(),MineView()];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: _getChild(),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() {
          _currentIndex=index;
        }),
        type: BottomNavigationBarType.fixed, // 强制设为固定模式，防止 4 个图标时变白
        selectedItemColor: Colors.blue, // 选中时的文字颜色
        unselectedItemColor: Colors.grey, // 未选中时的颜色
        items: getBarItem(),
      ),
    );
  }
}
