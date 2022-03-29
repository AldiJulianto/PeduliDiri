import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class testCard extends StatefulWidget {
  const testCard({Key? key}) : super(key: key);

  @override
  State<testCard> createState() => _testCardState();
}

class _testCardState extends State<testCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            autoPlay: true
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      
                      ),
                    child: Center(
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
