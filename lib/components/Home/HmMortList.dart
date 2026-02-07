import 'package:flutter/material.dart';

class Hmmortlist extends StatefulWidget {
  Hmmortlist({Key? key}) : super(key: key);

  @override
  _HmmortlistState createState() => _HmmortlistState();
}

class _HmmortlistState extends State<Hmmortlist> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ),
      itemCount: 100,
      
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text("商品${index+1}",style: TextStyle(color: Colors.white),),
        );
      },
    );
  }
}
