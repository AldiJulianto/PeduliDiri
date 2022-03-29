import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:peduli_diri/utility/constans.dart';

class testCard extends StatefulWidget {
  const testCard({Key? key}) : super(key: key);

  @override
  State<testCard> createState() => _testCardState();
}

class _testCardState extends State<testCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: CarouselSlider(
              options: CarouselOptions(height: 200.0, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
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
          Container(
            height: 50,
            width: 50,
          ),
          ListTile(
            hoverColor: kPrimaryColor,
            leading: CircleAvatar(),
            onTap: () {},
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.album, size: 45),
                        title: Text('Sonu Nigam'),
                        subtitle: Text('Best of Sonu Nigam Song'),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: kSecondColor,
                  child: Column(
                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        onTap: (){},
                        leading: Icon(Icons.album, size: 45),
                        title: Text('Sonu Nigam'),
                        subtitle: Text('Best of Sonu Nigam Song'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
