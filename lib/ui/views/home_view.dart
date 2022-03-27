import 'package:flutter/material.dart';
import 'package:peduli_diri/utility/constans.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar:   AppBar(
        iconTheme: IconThemeData(color: kPrimaryColor, size: 35),
        elevation: 0,
        backgroundColor: kWhiteColor,
        centerTitle: true,
        title: Text(
          "Peduli Diri",
          style: TextStyle(
            fontFamily: fontPopppins,
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: kPrimaryColor
          ),
        ),
        actions: [
          Container(  
            width: 25       ,
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: CircleAvatar(
                
              ),
            ),
          )
        ],
      ),

      drawer: Drawer(
        backgroundColor: kPrimaryColor,
          
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        // child: ListView(
        //   // Important: Remove any padding from the ListView.
        //   padding: EdgeInsets.zero,
        //   children: [
        //     const DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: kPrimaryColor,
        //       ),
        //       child: Text('Drawer Header'),
        //     ),
        //     ListTile(
        //       title: const Text('Item 1'),
        //       onTap: () {
        //         // Update the state of the app
        //         // ...
        //         // Then close the drawer
        //         Navigator.pop(context);
        //       },
        //     ),
        //     ListTile(
        //       title: const Text('Item 2'),
        //       onTap: () {
        //         // Update the state of the app
        //         // ...
        //         // Then close the drawer
        //         Navigator.pop(context);
        //       },
        //     ),
        //   ],
        // ),
      ),
        body: SafeArea(child: Center(
          child: Container(
            
          ),
      )),
    );
  }
}