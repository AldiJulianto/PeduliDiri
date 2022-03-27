import 'package:flutter/material.dart';
import 'package:peduli_diri/utility/constans.dart';

class ButtonBackAppBar extends StatelessWidget {
  final IconData IconbuttonBack;
  final Color warna;
  final Function? backFunction;
  ButtonBackAppBar(this.IconbuttonBack, this.warna, {this.backFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: backFunction != null ? () => backFunction!():null,
          child: buildIcon(IconbuttonBack, warna),          
      ),
    );
  }

  Widget buildIcon (IconData icon, Color warna) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: warna, size: 30,), 
    );
  }

}