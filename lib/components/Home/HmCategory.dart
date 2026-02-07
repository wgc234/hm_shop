import 'package:flutter/material.dart';

class Hmcategory extends StatefulWidget {
  Hmcategory({Key? key}) : super(key: key);

  @override
  _HmcategoryState createState() => _HmcategoryState();
}

class _HmcategoryState extends State<Hmcategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.blue,
            child: Text(
              "分类${index + 1}",
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
