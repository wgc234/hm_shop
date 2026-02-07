import 'package:flutter/material.dart';
import 'package:hm_shop/components/Home/HmCategory.dart';
import 'package:hm_shop/components/Home/HmHot.dart';
import 'package:hm_shop/components/Home/HmMortList.dart';
import 'package:hm_shop/components/Home/HmSlider.dart';
import 'package:hm_shop/components/Home/HmSuggestion.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

List<Widget> _getSlivers() {
  return [
    SliverToBoxAdapter(child: Hmslider()),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(child: Hmcategory()),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(child: Hmsuggestion()),
    SliverToBoxAdapter(child: SizedBox(height: 10)),
    SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(child: Hmhot()),
            SizedBox(width: 10),
            Expanded(child: Hmhot()),
          ],
        ),
      ),
    ),
    SliverToBoxAdapter(child: SizedBox(height: 35,),),
    Hmmortlist()
  ];
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: CustomScrollView(slivers: _getSlivers()));
  }
}
