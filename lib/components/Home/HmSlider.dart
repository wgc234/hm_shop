import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hm_shop/viewmodels/banner_item.dart';

class Hmslider extends StatefulWidget {
  final List<Banneritem> bannerItems;
  Hmslider({Key? key, required this.bannerItems}) : super(key: key);

  @override
  _HmsliderState createState() => _HmsliderState();
}

class _HmsliderState extends State<Hmslider> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  List<Widget> _getChild(double size) {
    return [
      CarouselSlider(
        carouselController: _controller,
        items: List.generate(widget.bannerItems.length, (int index) {
          return Container(
            height: 100,
            width: size,
            child: Image.network(
              widget.bannerItems[index].imageUrl,
              fit: BoxFit.cover,
            ),
          );
        }),
        options: CarouselOptions(
          onPageChanged: (index, reason) => setState(() {
            _currentIndex = index;
          }),
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
        ),
      ),
      _getSearch(),
      _getDots(),
    ];
  }

  Widget _getSearch() {
    return Positioned(
      left: 20,
      right: 20,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Container(
          padding: EdgeInsets.all(5),
          height: 30,
          decoration: BoxDecoration(
            color: Color.fromARGB(30, 0, 0, 0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text("搜索...", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }

  Widget _getDots() {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.bannerItems.length, (int index) {
          return GestureDetector(
            onTap: () {
              _controller.jumpToPage(index);
            },
            child: AnimatedContainer(
              margin: EdgeInsets.all(5),
              height: 6,
              width: _currentIndex == index ? 40 : 20,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? Colors.white
                    : Color.fromARGB(30, 0, 0, 0),
                borderRadius: BorderRadius.circular(3),
              ), duration: Duration(milliseconds: 300),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Stack(children: _getChild(size));
  }
}
